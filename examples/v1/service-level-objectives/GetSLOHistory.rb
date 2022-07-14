# Get an SLO's history returns "OK" response

require "datadog_api_client"
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations["v1.get_slo_history".to_sym] = true
end
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new

# there is a valid "slo" in the system
SLO_DATA_0_ID = ENV["SLO_DATA_0_ID"]
p api_instance.get_slo_history(SLO_DATA_0_ID, (Time.now + -1 * 86400).to_i, Time.now.to_i)
