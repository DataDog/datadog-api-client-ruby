# Delete an existing job returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
api_instance.delete_historical_job("job_id")
