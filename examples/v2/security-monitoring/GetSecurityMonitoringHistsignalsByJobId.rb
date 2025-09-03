# Get a job's hist signals returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_security_monitoring_histsignals_by_job_id".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
p api_instance.get_security_monitoring_histsignals_by_job_id("job_id")
