# Delete an archive returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
api_instance.delete_logs_archive("archive_id")
