# Search LLM Observability spans returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.search_llm_obs_spans".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsSearchSpansRequest.new({
  data: DatadogAPIClient::V2::LLMObsSearchSpansRequestData.new({
    attributes: DatadogAPIClient::V2::LLMObsSearchSpansRequestAttributes.new({
      filter: DatadogAPIClient::V2::LLMObsSpanFilter.new({
        from: "now-900s",
        ml_app: "my-llm-app",
        query: "@session_id:abc123def456",
        span_id: "abc123def456",
        span_kind: "llm",
        span_name: "llm_call",
        to: "now",
        trace_id: "trace-9a8b7c6d5e4f",
      }),
      options: DatadogAPIClient::V2::LLMObsSpanSearchOptions.new({
        include_attachments: true,
        time_offset: 0,
      }),
      page: DatadogAPIClient::V2::LLMObsSpanPageQuery.new({
        cursor: "eyJzdGFydCI6MTAwfQ==",
        limit: 10,
      }),
      sort: "-start_ns",
    }),
    type: DatadogAPIClient::V2::LLMObsSearchSpansRequestType::SPANS,
  }),
})
p api_instance.search_llm_obs_spans(body)
