# Get rum funnel step suggestions returns "Successful response with funnel step suggestions" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_rum_funnel_step_suggestions".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FunnelAPI.new

body = DatadogAPIClient::V2::FunnelSuggestionRequest.new({
  data: DatadogAPIClient::V2::FunnelSuggestionRequestData.new({
    attributes: DatadogAPIClient::V2::FunnelSuggestionRequestDataAttributes.new({
      data_source: "",
      search: DatadogAPIClient::V2::FunnelSuggestionRequestDataAttributesSearch.new({
        cross_session_filter: "",
        query_string: "@type:view",
        steps: [
          DatadogAPIClient::V2::FunnelSuggestionRequestDataAttributesSearchStepsItems.new({
            facet: "@view.name",
            step_filter: "",
            value: "/apm/home",
          }),
        ],
        subquery_id: "",
      }),
      term_search: DatadogAPIClient::V2::FunnelSuggestionRequestDataAttributesTermSearch.new({
        query: "apm",
      }),
      time: DatadogAPIClient::V2::FunnelSuggestionRequestDataAttributesTime.new({
        from: 1756425600000,
        to: 1756857600000,
      }),
    }),
    id: "funnel_suggestion_request",
    type: DatadogAPIClient::V2::FunnelSuggestionRequestDataType::FUNNEL_SUGGESTION_REQUEST,
  }),
})
p api_instance.get_rum_funnel_step_suggestions(body)
