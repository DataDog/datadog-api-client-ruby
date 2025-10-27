# List historical jobs returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_threat_hunting_jobs".to_sym] = true
  config.unstable_operations["v2.run_threat_hunting_job".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "threat_hunting_job" in the system
THREAT_HUNTING_JOB_DATA_ID = ENV["THREAT_HUNTING_JOB_DATA_ID"]
opts = {
  filter_query: "id:string",
}
p api_instance.list_threat_hunting_jobs(opts)
