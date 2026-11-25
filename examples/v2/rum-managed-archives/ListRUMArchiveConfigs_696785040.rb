# List archive configurations returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMManagedArchivesAPI.new
api_instance.list_rum_archive_configs_with_pagination() { |item| puts item }
