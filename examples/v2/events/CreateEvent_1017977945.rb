# Post an event with metric_configuration resource type returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::EventsAPI.new

body = DatadogAPIClient::V2::EventCreateRequestPayload.new({
  data: DatadogAPIClient::V2::EventCreateRequest.new({
    attributes: DatadogAPIClient::V2::EventPayload.new({
      aggregation_key: "aggregation_key_123",
      attributes: DatadogAPIClient::V2::ChangeEventCustomAttributes.new({
        author: DatadogAPIClient::V2::ChangeEventCustomAttributesAuthor.new({
          name: "example@datadog.com",
          type: DatadogAPIClient::V2::ChangeEventCustomAttributesAuthorType::USER,
        }),
        change_metadata: {
          "dd": "{'team': 'datadog_team', 'user_email': 'datadog@datadog.com', 'user_id': 'datadog_user_id', 'user_name': 'datadog_username'}", "resource_link": "datadog.com/metric/config_test",
        },
        changed_resource: DatadogAPIClient::V2::ChangeEventCustomAttributesChangedResource.new({
          name: "config_test",
          type: DatadogAPIClient::V2::ChangeEventCustomAttributesChangedResourceType::METRIC_CONFIGURATION,
        }),
        impacted_resources: [
          DatadogAPIClient::V2::ChangeEventCustomAttributesImpactedResourcesItems.new({
            name: "system.cpu.usage",
            type: DatadogAPIClient::V2::ChangeEventCustomAttributesImpactedResourcesItemsType::SERVICE,
          }),
        ],
        new_value: {
          "aggregation": "avg", "tags": "['env:prod', 'service:web']", "unit": "percent",
        },
        prev_value: {
          "aggregation": "sum", "tags": "['env:prod']", "unit": "percent",
        },
      }),
      category: DatadogAPIClient::V2::EventCategory::CHANGE,
      integration_id: DatadogAPIClient::V2::EventPayloadIntegrationId::CUSTOM_EVENTS,
      message: "metric configuration has been updated",
      tags: [
        "env:api_client_test",
      ],
      title: "metric configuration updated",
    }),
    type: DatadogAPIClient::V2::EventCreateRequestType::EVENT,
  }),
})
p api_instance.create_event(body)
