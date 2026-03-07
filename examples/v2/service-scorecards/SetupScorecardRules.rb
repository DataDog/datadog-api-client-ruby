# Set up rules for organization returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.setup_scorecard_rules".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ServiceScorecardsAPI.new

body = DatadogAPIClient::V2::SetupRulesRequest.new({
  data: DatadogAPIClient::V2::SetupRulesRequestData.new({
    attributes: DatadogAPIClient::V2::SetupRulesRequestAttributes.new({
      disabled_default_rules: [
        "q8MQxk8TCqrHnWkx",
        "r9NRyl9UDrsIoXly",
      ],
    }),
    type: DatadogAPIClient::V2::SetupRulesRequestDataType::SETUP,
  }),
})
api_instance.setup_scorecard_rules(body)
