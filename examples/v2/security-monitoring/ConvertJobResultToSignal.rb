# Convert a job result to a signal returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.convert_job_result_to_signal".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::ConvertJobResultsToSignalsRequest.new({
  data: DatadogAPIClient::V2::ConvertJobResultsToSignalsData.new({
    attributes: DatadogAPIClient::V2::ConvertJobResultsToSignalsAttributes.new({
      job_result_ids: [
        "",
      ],
      notifications: [
        "",
      ],
      signal_message: "A large number of failed login attempts.",
      signal_severity: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::CRITICAL,
    }),
    type: DatadogAPIClient::V2::ConvertJobResultsToSignalsDataType::HISTORICALDETECTIONSJOBRESULTSIGNALCONVERSION,
  }),
})
api_instance.convert_job_result_to_signal(body)
