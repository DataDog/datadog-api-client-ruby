# Get SLO report status returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_slo_report_job_status".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ServiceLevelObjectivesAPI.new

# there is a valid "report" in the system
REPORT_DATA_ID = ENV["REPORT_DATA_ID"]
p api_instance.get_slo_report_job_status(REPORT_DATA_ID)
