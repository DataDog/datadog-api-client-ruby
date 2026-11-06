# Create or update an archive configuration returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMManagedArchivesAPI.new

body = DatadogAPIClient::V2::RumArchiveConfigUpsertRequest.new({
  data: DatadogAPIClient::V2::RumArchiveConfigUpsertData.new({
    attributes: DatadogAPIClient::V2::RumArchiveConfigUpsertAttributes.new({
      enabled: true,
      retention_days: 90,
    }),
    id: "a33671aa-24fd-4dcd-ba4b-5bbdbafe7690",
    type: DatadogAPIClient::V2::RumArchiveConfigType::RUM_ARCHIVE_CONFIG,
  }),
})
p api_instance.update_rum_archive_config("a33671aa-24fd-4dcd-ba4b-5bbdbafe7690", body)
