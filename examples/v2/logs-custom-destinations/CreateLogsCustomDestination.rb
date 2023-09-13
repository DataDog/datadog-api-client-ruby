# Create a custom destination returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_logs_custom_destination".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LogsCustomDestinationsAPI.new

body = DatadogAPIClient::V2::CustomDestinationCreateRequest.new({
  data: DatadogAPIClient::V2::CustomDestinationCreateData.new({
    attributes: DatadogAPIClient::V2::CustomDestinationAttributes.new({
      buffer_max_bytes: 10000000,
      buffer_timeout_seconds: 100,
      compression: DatadogAPIClient::V2::CustomDestinationCompressionType::GZIP_COMPRESSION,
      enabled: true,
      fallback_destination: DatadogAPIClient::V2::AzureFallbackDestination.new({
        container: "container-name",
        integration: DatadogAPIClient::V2::AzureFallbackDestinationIntegration.new({
          client_id: "aaaaaaaa-1a1a-1a1a-1a1a-aaaaaaaaaaaa",
          tenant_id: "aaaaaaaa-1a1a-1a1a-1a1a-aaaaaaaaaaaa",
        }),
        storage_account: "account-name",
        type: DatadogAPIClient::V2::AzureFallbackDestinationType::AZURE,
      }),
      forwarder_destination: DatadogAPIClient::V2::HttpDestination.new({
        auth: DatadogAPIClient::V2::HttpDestinationBasicAuth.new({
          password: "password",
          type: DatadogAPIClient::V2::HttpDestinationBasicAuthType::BASIC,
          username: "username",
        }),
        endpoint: "https://example.org/my-intake",
        type: DatadogAPIClient::V2::HttpDestinationType::HTTP,
      }),
      max_retry_duration_seconds: 100,
      name: "my-destination",
      query: "source:dummy",
      version: 0,
    }),
    type: DatadogAPIClient::V2::CustomDestinationType::CUSTOM_DESTINATION,
  }),
})
p api_instance.create_logs_custom_destination(body)
