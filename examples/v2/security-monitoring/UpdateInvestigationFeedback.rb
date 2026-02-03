# Update investigation feedback returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_investigation_feedback".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringSignalInvestigationFeedbackRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringSignalInvestigationFeedbackRequestData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringSignalInvestigationFeedbackRequestAttributes.new({
      feedback: "positive",
      feedback_content: [
        DatadogAPIClient::V2::SecurityMonitoringSignalInvestigationFeedbackSection.new({
          id: "section-1",
          metrics: [
            DatadogAPIClient::V2::SecurityMonitoringSignalInvestigationFeedbackMetric.new({
              placeholder: "Enter your feedback here",
              prompt: "How helpful was this investigation?",
              response: "Very helpful",
              type: "sentiment",
            }),
          ],
          title: "Investigation Quality",
        }),
      ],
      incomplete: false,
      rating: "positive",
      signal_id: "AAAAAWgN8Xwgr1vKDQAAAABBV2dOOFh3ZzZobm1mWXJFYTR0OA",
      type: "metrics",
    }),
    type: DatadogAPIClient::V2::SecurityMonitoringSignalInvestigationFeedbackType::INVESTIGATION_FEEDBACK,
  }),
})
p api_instance.update_investigation_feedback(body)
