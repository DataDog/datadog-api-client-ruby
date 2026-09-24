# Check if SLOs can be safely deleted returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new
p api_instance.check_can_delete_slo("ids")
