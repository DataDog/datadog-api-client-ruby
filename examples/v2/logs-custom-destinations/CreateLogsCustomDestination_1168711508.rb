# Create a custom destination with HTTP request header forwarding returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_logs_custom_destination".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LogsCustomDestinationsAPI.new

body = DatadogAPIClient::V2::CustomDestinationCreatePayload.new({
  data: DatadogAPIClient::V2::CustomDestinationWithoutId.new({
    attributes: DatadogAPIClient::V2::CustomDestinationAttributes.new({
      name: "my-destination",
      version: 0,
      forwarder_destination: DatadogAPIClient::V2::HttpDestination.new({
        type: DatadogAPIClient::V2::HttpDestinationType::HTTP,
        endpoint: "https://example.org/my-intake",
        auth: DatadogAPIClient::V2::HttpDestinationCustomHeaderAuth.new({
          type: DatadogAPIClient::V2::HttpDestinationCustomHeaderAuthType::CUSTOM_HEADER,
          header_name: "header",
          header_value: "value",
        }),
      }),
    }),
    type: "custom_destination",
  }),
})
p api_instance.create_logs_custom_destination(body)
