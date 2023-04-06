# Create an SLO correction returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI.new

# there is a valid "slo" in the system
SLO_DATA_0_ID = ENV["SLO_DATA_0_ID"]

body = DatadogAPIClient::V1::SLOCorrectionCreateRequest.new({
  data: DatadogAPIClient::V1::SLOCorrectionCreateData.new({
    attributes: DatadogAPIClient::V1::SLOCorrectionCreateRequestAttributes.new({
      category: DatadogAPIClient::V1::SLOCorrectionCategory::SCHEDULED_MAINTENANCE,
      description: "Example-Service-Level-Objective-Correction",
      _end: (Time.now + 1 * 3600).to_i,
      slo_id: SLO_DATA_0_ID,
      start: Time.now.to_i,
      timezone: "UTC",
    }),
    type: DatadogAPIClient::V1::SLOCorrectionType::CORRECTION,
  }),
})
p api_instance.create_slo_correction(body)
