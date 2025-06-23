# Create a Microsoft Sentinel custom destination returns "OK" response

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
      forwarder_destination: DatadogAPIClient::V2::CustomDestinationForwardDestinationMicrosoftSentinel.new({
        type: DatadogAPIClient::V2::CustomDestinationForwardDestinationMicrosoftSentinelType::MICROSOFT_SENTINEL,
        tenant_id: "f3c9a8a1-4c2e-4d2e-b911-9f3c28c3c8b2",
        client_id: "9a2f4d83-2b5e-429e-a35a-2b3c4182db71",
        data_collection_endpoint: "https://my-dce-5kyl.eastus-1.ingest.monitor.azure.com",
        data_collection_rule_id: "dcr-000a00a000a00000a000000aa000a0aa",
        stream_name: "Custom-MyTable",
      }),
      name: "Nginx logs",
      query: "source:nginx",
    }),
    type: DatadogAPIClient::V2::CustomDestinationType::CUSTOM_DESTINATION,
  }),
})
p api_instance.create_logs_custom_destination(body)
