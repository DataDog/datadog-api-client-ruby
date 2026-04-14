# Update a Splunk custom destination with a null sourcetype returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsCustomDestinationsAPI.new

# there is a valid "custom_destination_splunk_with_sourcetype" in the system
CUSTOM_DESTINATION_SPLUNK_WITH_SOURCETYPE_DATA_ID = ENV["CUSTOM_DESTINATION_SPLUNK_WITH_SOURCETYPE_DATA_ID"]

body = DatadogAPIClient::V2::CustomDestinationUpdateRequest.new({
  data: DatadogAPIClient::V2::CustomDestinationUpdateRequestDefinition.new({
    attributes: DatadogAPIClient::V2::CustomDestinationUpdateRequestAttributes.new({
      forwarder_destination: DatadogAPIClient::V2::CustomDestinationForwardDestinationSplunk.new({
        type: DatadogAPIClient::V2::CustomDestinationForwardDestinationSplunkType::SPLUNK_HEC,
        endpoint: "https://example.com",
        access_token: "my-access-token",
        sourcetype: nil,
      }),
    }),
    type: DatadogAPIClient::V2::CustomDestinationType::CUSTOM_DESTINATION,
    id: CUSTOM_DESTINATION_SPLUNK_WITH_SOURCETYPE_DATA_ID,
  }),
})
p api_instance.update_logs_custom_destination(CUSTOM_DESTINATION_SPLUNK_WITH_SOURCETYPE_DATA_ID, body)
