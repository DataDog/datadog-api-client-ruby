# Cancel a threat hunting job returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.cancel_threat_hunting_job".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
api_instance.cancel_threat_hunting_job("job_id")
