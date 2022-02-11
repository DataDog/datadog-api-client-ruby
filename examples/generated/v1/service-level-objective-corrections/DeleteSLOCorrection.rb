require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:delete_slo_correction] = true
end

api_instance = DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI.new
slo_correction_id = 'slo_correction_id_example' # String | The ID of the SLO correction object.

begin
  # Delete an SLO correction
  api_instance.delete_slo_correction(slo_correction_id)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectiveCorrectionsAPI->delete_slo_correction: #{e}"
end
