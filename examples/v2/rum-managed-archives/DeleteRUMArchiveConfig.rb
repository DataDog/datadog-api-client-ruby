# Delete an archive configuration returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMManagedArchivesAPI.new
api_instance.delete_rum_archive_config("a33671aa-24fd-4dcd-ba4b-5bbdbafe7690")
