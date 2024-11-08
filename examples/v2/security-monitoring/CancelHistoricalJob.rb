# Cancel a historical job returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.run_historical_job".to_sym] = true
  config.unstable_operations["v2.cancel_historical_job".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "historical_job" in the system
HISTORICAL_JOB_DATA_ID = ENV["HISTORICAL_JOB_DATA_ID"]
api_instance.cancel_historical_job(HISTORICAL_JOB_DATA_ID)
