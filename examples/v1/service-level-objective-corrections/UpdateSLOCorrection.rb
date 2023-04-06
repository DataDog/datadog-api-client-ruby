# Update an SLO correction returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI.new

# there is a valid "correction" for "slo"
CORRECTION_DATA_ID = ENV["CORRECTION_DATA_ID"]

body = DatadogAPIClient::V1::SLOCorrectionUpdateRequest.new({
  data: DatadogAPIClient::V1::SLOCorrectionUpdateData.new({
    attributes: DatadogAPIClient::V1::SLOCorrectionUpdateRequestAttributes.new({
      category: DatadogAPIClient::V1::SLOCorrectionCategory::DEPLOYMENT,
      description: "Example-Service-Level-Objective-Correction",
      _end: (Time.now + 1 * 3600).to_i,
      start: Time.now.to_i,
      timezone: "UTC",
    }),
    type: DatadogAPIClient::V1::SLOCorrectionType::CORRECTION,
  }),
})
p api_instance.update_slo_correction(CORRECTION_DATA_ID, body)
