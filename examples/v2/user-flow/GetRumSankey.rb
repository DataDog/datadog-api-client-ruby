# Get rum sankey returns "Successful response with Sankey diagram data" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_rum_sankey".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UserFlowAPI.new

body = DatadogAPIClient::V2::SankeyRequest.new({
  data: DatadogAPIClient::V2::SankeyRequestData.new({
    attributes: DatadogAPIClient::V2::SankeyRequestDataAttributes.new({
      data_source: "",
      definition: DatadogAPIClient::V2::SankeyRequestDataAttributesDefinition.new({
        entries_per_step: 10,
        number_of_steps: 5,
        source: "@view.name",
        target: "@view.name",
      }),
      enforced_execution_type: "",
      request_id: "",
      sampling: DatadogAPIClient::V2::SankeyRequestDataAttributesSampling.new({
        enabled: true,
      }),
      search: DatadogAPIClient::V2::SankeyRequestDataAttributesSearch.new({
        audience_filters: DatadogAPIClient::V2::SankeyRequestDataAttributesSearchAudienceFilters.new({}),
        query: "@type:view @application.id:*",
        subquery_id: "",
      }),
      time: DatadogAPIClient::V2::SankeyRequestDataAttributesTime.new({
        from: 1756425600000,
        to: 1756857600000,
      }),
    }),
    id: "sankey_request",
    type: DatadogAPIClient::V2::SankeyRequestDataType::SANKEY_REQUEST,
  }),
})
p api_instance.get_rum_sankey(body)
