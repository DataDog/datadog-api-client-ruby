# Get SLO report returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_slo_report".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ServiceLevelObjectivesAPI.new
p api_instance.get_slo_report("9fb2dc2a-ead0-11ee-a174-9fe3a9d7627f")
