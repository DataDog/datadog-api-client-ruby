# Add insights to a case returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.add_case_insights".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::CaseInsightsRequest.new({
  data: DatadogAPIClient::V2::CaseInsightsData.new({
    attributes: DatadogAPIClient::V2::CaseInsightsAttributes.new({
      insights: [
        DatadogAPIClient::V2::CaseInsight.new({
          ref: "/monitors/12345?q=total",
          resource_id: "12345",
          type: DatadogAPIClient::V2::CaseInsightType::SECURITY_SIGNAL,
        }),
      ],
    }),
    type: DatadogAPIClient::V2::CaseResourceType::CASE,
  }),
})
p api_instance.add_case_insights("case_id", body)
