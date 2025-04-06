# Get a job's details returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "historical_job" in the system
HISTORICAL_JOB_DATA_ID = ENV["HISTORICAL_JOB_DATA_ID"]
p api_instance.get_historical_job(HISTORICAL_JOB_DATA_ID)
