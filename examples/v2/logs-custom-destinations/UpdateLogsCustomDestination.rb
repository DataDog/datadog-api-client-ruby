# Update a custom destination returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_logs_custom_destination".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LogsCustomDestinationsAPI.new

# there is a valid "logs_custom_destination" in the system
LOGS_CUSTOM_DESTINATION_DATA_ATTRIBUTES_NAME = ENV["LOGS_CUSTOM_DESTINATION_DATA_ATTRIBUTES_NAME"]
LOGS_CUSTOM_DESTINATION_DATA_ID = ENV["LOGS_CUSTOM_DESTINATION_DATA_ID"]

body = DatadogAPIClient::V2::CustomDestinationUpdateRequest.new({
  data: DatadogAPIClient::V2::CustomDestination.new({
    id: LOGS_CUSTOM_DESTINATION_DATA_ID,
    attributes: DatadogAPIClient::V2::CustomDestinationAttributes.new({
      name: "my-destination--updated-name",
      version: 0,
      forwarder_destination: DatadogAPIClient::V2::HttpDestination.new({
        type: DatadogAPIClient::V2::HttpDestinationType::HTTP,
        endpoint: "https://example.org/my-intake",
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
p api_instance.update_logs_custom_destination(LOGS_CUSTOM_DESTINATION_DATA_ID, body)
