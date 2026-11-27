# Get an archive configuration returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMManagedArchivesAPI.new

# there is a valid "rum_application" in the system
RUM_APPLICATION_DATA_ID = ENV["RUM_APPLICATION_DATA_ID"]
p api_instance.get_rum_archive_config(RUM_APPLICATION_DATA_ID)
