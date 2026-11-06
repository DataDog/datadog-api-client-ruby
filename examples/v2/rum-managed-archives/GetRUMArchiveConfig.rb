# Get an archive configuration returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMManagedArchivesAPI.new
p api_instance.get_rum_archive_config("a33671aa-24fd-4dcd-ba4b-5bbdbafe7690")
