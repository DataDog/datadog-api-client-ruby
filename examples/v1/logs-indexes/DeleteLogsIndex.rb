# Delete an index returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsIndexesAPI.new
p api_instance.delete_logs_index("name")
