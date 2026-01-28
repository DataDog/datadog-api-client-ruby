# Get SLO status returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_slo_status".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ServiceLevelObjectivesAPI.new
p api_instance.get_slo_status("00000000-0000-0000-0000-000000000000", 1690901870, 1706803070)
