# Validate query returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::RulesValidateQueryRequest.new({
  data: DatadogAPIClient::V2::RulesValidateQueryRequestData.new({
    attributes: DatadogAPIClient::V2::RulesValidateQueryRequestDataAttributes.new({
      query: "example:query AND test:true",
    }),
    type: DatadogAPIClient::V2::RulesValidateQueryRequestDataType::VALIDATE_QUERY,
  }),
})
p api_instance.validate_query(body)
