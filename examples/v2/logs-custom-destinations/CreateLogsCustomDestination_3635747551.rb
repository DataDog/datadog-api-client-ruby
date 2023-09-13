# Create a custom destination with Splunk forwarding returns "OK" response

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
      forwarder_destination: DatadogAPIClient::V2::SplunkHecDestination.new({
        type: DatadogAPIClient::V2::SplunkHecDestinationType::SPLUNK_HEC,
        endpoint: "https://example.org/my-intake",
        access_token: "secret",
      }),
    }),
    type: DatadogAPIClient::V2::CustomDestinationType::CUSTOM_DESTINATION,
  }),
})
p api_instance.create_logs_custom_destination(body)
