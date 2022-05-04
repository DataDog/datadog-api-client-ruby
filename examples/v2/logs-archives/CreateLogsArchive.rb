# Create an archive returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new

body = DatadogAPIClient::V2::LogsArchiveCreateRequest.new({
  data: DatadogAPIClient::V2::LogsArchiveCreateRequestDefinition.new({
    attributes: DatadogAPIClient::V2::LogsArchiveCreateRequestAttributes.new({
      destination: DatadogAPIClient::V2::LogsArchiveDestinationAzure.new({
        container: "container-name",
        integration: DatadogAPIClient::V2::LogsArchiveIntegrationAzure.new({
          client_id: "aaaaaaaa-1a1a-1a1a-1a1a-aaaaaaaaaaaa",
          tenant_id: "aaaaaaaa-1a1a-1a1a-1a1a-aaaaaaaaaaaa",
        }),
        storage_account: "account-name",
        type: DatadogAPIClient::V2::LogsArchiveDestinationAzureType::AZURE,
      }),
      include_tags: false,
      name: "Nginx Archive",
      query: "source:nginx",
      rehydration_max_scan_size_in_gb: 100,
      rehydration_tags: [
        "team:intake",
        "team:app",
      ],
    }),
    type: "archives",
  }),
})
p api_instance.create_logs_archive(body)
