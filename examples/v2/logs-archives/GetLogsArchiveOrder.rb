# Get archive order returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
p api_instance.get_logs_archive_order()
