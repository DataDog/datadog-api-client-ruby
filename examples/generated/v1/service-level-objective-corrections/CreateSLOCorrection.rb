require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:create_slo_correction] = true
end

api_instance = DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI.new
body = DatadogAPIClient::V1::SLOCorrectionCreateRequest.new # SLOCorrectionCreateRequest | Create an SLO Correction

begin
  # Create an SLO correction
  result = api_instance.create_slo_correction(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectiveCorrectionsAPI->create_slo_correction: #{e}"
end
