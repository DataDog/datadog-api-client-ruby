# Get rum funnel returns "Successful response with funnel analysis data" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_rum_funnel".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FunnelAPI.new

body = DatadogAPIClient::V2::FunnelRequest.new({
  data: DatadogAPIClient::V2::FunnelRequestData.new({
    attributes: DatadogAPIClient::V2::FunnelRequestDataAttributes.new({
      data_source: "rum",
      enforced_execution_type: "",
      request_id: "",
      search: DatadogAPIClient::V2::FunnelRequestDataAttributesSearch.new({
        cross_session_filter: "",
        query_string: "@type:view",
        steps: [
          DatadogAPIClient::V2::FunnelRequestDataAttributesSearchStepsItems.new({
            facet: "@view.name",
            step_filter: "",
            value: "/apm/home",
          }),
          DatadogAPIClient::V2::FunnelRequestDataAttributesSearchStepsItems.new({
            facet: "@view.name",
            step_filter: "",
            value: "/apm/traces",
          }),
        ],
        subquery_id: "",
      }),
      time: DatadogAPIClient::V2::FunnelRequestDataAttributesTime.new({
        from: 1756425600000,
        to: 1756857600000,
      }),
    }),
    id: "funnel_request",
    type: DatadogAPIClient::V2::FunnelRequestDataType::FUNNEL_REQUEST,
  }),
})
p api_instance.get_rum_funnel(body)
