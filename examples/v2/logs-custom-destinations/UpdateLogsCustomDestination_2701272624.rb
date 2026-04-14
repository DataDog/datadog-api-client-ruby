# Update a Splunk custom destination's attributes preserves the absent sourcetype returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsCustomDestinationsAPI.new

# there is a valid "custom_destination_splunk" in the system
CUSTOM_DESTINATION_SPLUNK_DATA_ID = ENV["CUSTOM_DESTINATION_SPLUNK_DATA_ID"]

body = DatadogAPIClient::V2::CustomDestinationUpdateRequest.new({
  data: DatadogAPIClient::V2::CustomDestinationUpdateRequestDefinition.new({
    attributes: DatadogAPIClient::V2::CustomDestinationUpdateRequestAttributes.new({
      name: "Nginx logs (Updated)",
    }),
    type: DatadogAPIClient::V2::CustomDestinationType::CUSTOM_DESTINATION,
    id: CUSTOM_DESTINATION_SPLUNK_DATA_ID,
  }),
})
p api_instance.update_logs_custom_destination(CUSTOM_DESTINATION_SPLUNK_DATA_ID, body)
