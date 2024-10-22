# Post a change event returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_event".to_sym] = true
end
api_instance = DatadogAPIClient::V2::EventsAPI.new

body = DatadogAPIClient::V2::ChangeEventCreateRequestPayload.new({
  data: DatadogAPIClient::V2::ChangeEventCreateRequest.new({
    attributes: DatadogAPIClient::V2::ChangeEvent.new({
      attributes: DatadogAPIClient::V2::ChangeEventCustomAttributes.new({
        author: DatadogAPIClient::V2::ChangeEventCustomAttributesAuthor.new({
          name: "datadog@datadog.com",
          type: DatadogAPIClient::V2::ChangeEventCustomAttributesAuthorType::USER,
        }),
        change_metadata: {
          "dd": "{'team': 'datadog_team', 'user_email': 'datadog@datadog.com', 'user_id': 'datadog_user_id', 'user_name': 'datadog_username'}", "resource_link": "datadog.com/feature/fallback_payments_test",
        },
        changed_resource: DatadogAPIClient::V2::ChangeEventCustomAttributesChangedResource.new({
          name: "fallback_payments_test",
          type: DatadogAPIClient::V2::ChangeEventCustomAttributesChangedResourceType::FEATURE_FLAG,
        }),
        impacted_resources: [
          DatadogAPIClient::V2::ChangeEventCustomAttributesImpactedResourcesItems.new({
            name: "payments_api",
            type: DatadogAPIClient::V2::ChangeEventCustomAttributesImpactedResourcesItemsType::SERVICE,
          }),
        ],
        new_value: {
          "enabled": "True", "percentage": "50%", "rule": "{'datacenter': 'devcycle.us1.prod'}",
        },
        prev_value: {
          "enabled": "True", "percentage": "10%", "rule": "{'datacenter': 'devcycle.us1.prod'}",
        },
      }),
      category: DatadogAPIClient::V2::ChangeEventCategory::CHANGE,
      message: "payment_processed feature flag has been enabled",
      tags: [
        "environment:test",
      ],
      title: "payment_processed feature flag updated",
    }),
    type: DatadogAPIClient::V2::ChangeEventCreateRequestType::EVENT,
  }),
})
p api_instance.create_event(body)
