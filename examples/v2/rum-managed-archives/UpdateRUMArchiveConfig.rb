# Create or update an archive configuration returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMManagedArchivesAPI.new

# there is a valid "rum_application" in the system
RUM_APPLICATION_DATA_ID = ENV["RUM_APPLICATION_DATA_ID"]

body = DatadogAPIClient::V2::RumArchiveConfigUpsertRequest.new({
  data: DatadogAPIClient::V2::RumArchiveConfigUpsertData.new({
    attributes: DatadogAPIClient::V2::RumArchiveConfigUpsertAttributes.new({
      enabled: true,
      retention_days: 90,
    }),
    id: RUM_APPLICATION_DATA_ID,
    type: DatadogAPIClient::V2::RumArchiveConfigType::RUM_ARCHIVE_CONFIG,
  }),
})
p api_instance.update_rum_archive_config(RUM_APPLICATION_DATA_ID, body)
