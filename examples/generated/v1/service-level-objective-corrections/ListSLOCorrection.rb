require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:list_slo_correction] = true
end

api_instance = DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI.new

begin
  # Get all SLO corrections
  result = api_instance.list_slo_correction
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectiveCorrectionsAPI->list_slo_correction: #{e}"
end
