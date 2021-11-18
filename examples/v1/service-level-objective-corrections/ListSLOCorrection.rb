# Get all SLO corrections returns "OK" response

require 'datadog_api_client'
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:list_slo_correction] = true
end
api_instance = DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI.new
p api_instance.list_slo_correction()
