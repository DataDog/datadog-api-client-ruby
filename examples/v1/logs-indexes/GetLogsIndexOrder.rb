# Get indexes order returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsIndexesAPI.new
p api_instance.get_logs_index_order()
