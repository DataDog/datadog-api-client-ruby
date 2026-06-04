# Create an SLO correction with slo_query returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI.new

body = DatadogAPIClient::V1::SLOCorrectionCreateRequest.new({
  data: DatadogAPIClient::V1::SLOCorrectionCreateData.new({
    attributes: DatadogAPIClient::V1::SLOCorrectionCreateRequestAttributes.new({
      category: DatadogAPIClient::V1::SLOCorrectionCategory::SCHEDULED_MAINTENANCE,
      description: "Example-Service-Level-Objective-Correction",
      _end: (Time.now + 1 * 3600).to_i,
      slo_query: "env:prod service:checkout",
      start: Time.now.to_i,
      timezone: "UTC",
    }),
    type: DatadogAPIClient::V1::SLOCorrectionType::CORRECTION,
  }),
})
p api_instance.create_slo_correction(body)
