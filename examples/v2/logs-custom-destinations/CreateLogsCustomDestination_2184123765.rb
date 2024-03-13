# Create a Basic HTTP custom destination returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsCustomDestinationsAPI.new

body = DatadogAPIClient::V2::CustomDestinationCreateRequest.new({
  data: DatadogAPIClient::V2::CustomDestinationCreateRequestDefinition.new({
    attributes: DatadogAPIClient::V2::CustomDestinationCreateRequestAttributes.new({
      enabled: false,
      forward_tags: false,
      forward_tags_restriction_list: [
        "datacenter",
        "host",
      ],
      forward_tags_restriction_list_type: DatadogAPIClient::V2::CustomDestinationAttributeTagsRestrictionListType::ALLOW_LIST,
      forwarder_destination: DatadogAPIClient::V2::CustomDestinationForwardDestinationHttp.new({
        auth: DatadogAPIClient::V2::CustomDestinationHttpDestinationAuthBasic.new({
          password: "datadog-custom-destination-password",
          type: DatadogAPIClient::V2::CustomDestinationHttpDestinationAuthBasicType::BASIC,
          username: "datadog-custom-destination-username",
        }),
        endpoint: "https://example.com",
        type: DatadogAPIClient::V2::CustomDestinationForwardDestinationHttpType::HTTP,
      }),
      name: "Nginx logs",
      query: "source:nginx",
    }),
    type: DatadogAPIClient::V2::CustomDestinationType::CUSTOM_DESTINATION,
  }),
})
p api_instance.create_logs_custom_destination(body)
