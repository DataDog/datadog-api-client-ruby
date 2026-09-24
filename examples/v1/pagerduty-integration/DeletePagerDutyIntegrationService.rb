# Delete a single service object returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::PagerDutyIntegrationAPI.new
api_instance.delete_pager_duty_integration_service("service_name")
