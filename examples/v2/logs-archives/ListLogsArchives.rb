# Get all archives returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
p api_instance.list_logs_archives()
