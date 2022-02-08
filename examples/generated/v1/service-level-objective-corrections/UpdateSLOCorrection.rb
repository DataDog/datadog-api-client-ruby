require "datadog_api_client"

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:update_slo_correction] = true
end

api_instance = DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI.new
slo_correction_id = "slo_correction_id_example" # String | The ID of the SLO correction object.
body = DatadogAPIClient::V1::SLOCorrectionUpdateRequest.new # SLOCorrectionUpdateRequest | The edited SLO correction object.

begin
  # Update an SLO correction
  result = api_instance.update_slo_correction(slo_correction_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectiveCorrectionsAPI->update_slo_correction: #{e}"
end
