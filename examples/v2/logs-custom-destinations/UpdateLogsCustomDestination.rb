# Update a custom destination returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsCustomDestinationsAPI.new

# there is a valid "custom_destination" in the system
CUSTOM_DESTINATION_DATA_ID = ENV["CUSTOM_DESTINATION_DATA_ID"]

body = DatadogAPIClient::V2::CustomDestinationUpdateRequest.new({
  data: DatadogAPIClient::V2::CustomDestinationUpdateRequestDefinition.new({
    attributes: DatadogAPIClient::V2::CustomDestinationUpdateRequestAttributes.new({
      name: "Nginx logs (Updated)",
      query: "source:nginx",
      enabled: false,
      forward_tags: false,
      forward_tags_restriction_list_type: DatadogAPIClient::V2::CustomDestinationAttributeTagsRestrictionListType::BLOCK_LIST,
    }),
    type: DatadogAPIClient::V2::CustomDestinationType::CUSTOM_DESTINATION,
    id: CUSTOM_DESTINATION_DATA_ID,
  }),
})
p api_instance.update_logs_custom_destination(CUSTOM_DESTINATION_DATA_ID, body)
