# Get all indexes returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsIndexesAPI.new
p api_instance.list_log_indexes()
