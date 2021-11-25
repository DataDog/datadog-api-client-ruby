# Get Corrections For an SLO returns "OK" response

require "datadog_api_client"
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:get_slo_corrections] = true
end
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new

# there is a valid "slo" in the system
SLO_DATA_0_ID = ENV["SLO_DATA_0_ID"]
p api_instance.get_slo_corrections(SLO_DATA_0_ID)
