# List archive configurations returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMManagedArchivesAPI.new
opts = {
  page_number: 0,
  page_size: 1,
}
p api_instance.list_rum_archive_configs(opts)
