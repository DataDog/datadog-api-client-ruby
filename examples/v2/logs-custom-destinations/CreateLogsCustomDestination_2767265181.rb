# Create a custom destination with Elasticsearch forwarding returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_logs_custom_destination".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LogsCustomDestinationsAPI.new

body = DatadogAPIClient::V2::CustomDestinationCreateRequest.new({
  data: DatadogAPIClient::V2::CustomDestinationCreateData.new({
    attributes: DatadogAPIClient::V2::CustomDestinationAttributes.new({
      name: "my-destination",
      version: 0,
      forwarder_destination: DatadogAPIClient::V2::ElasticsearchDestination.new({
        type: DatadogAPIClient::V2::ElasticsearchDestinationType::ELASTICSEARCH,
        endpoint: "https://example.org/my-intake",
        index_name: "name",
        index_rotation: "yyyy-MM-dd",
        auth: DatadogAPIClient::V2::HttpDestinationBasicAuth.new({
          type: DatadogAPIClient::V2::HttpDestinationBasicAuthType::BASIC,
          username: "username",
          password: "password",
        }),
      }),
    }),
    type: DatadogAPIClient::V2::CustomDestinationType::CUSTOM_DESTINATION,
  }),
})
p api_instance.create_logs_custom_destination(body)
