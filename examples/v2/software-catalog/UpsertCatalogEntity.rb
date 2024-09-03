# Create or update entities returns "ACCEPTED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SoftwareCatalogAPI.new

body = DatadogAPIClient::V2::EntityV3Service.new({
  api_version: DatadogAPIClient::V2::EntityV3APIVersion::V3,
  datadog: DatadogAPIClient::V2::EntityV3ServiceDatadog.new({
    code_locations: [
      DatadogAPIClient::V2::EntityV3DatadogCodeLocationItem.new({
        paths: [],
      }),
    ],
    events: [
      DatadogAPIClient::V2::EntityV3DatadogEventItem.new({}),
    ],
    logs: [
      DatadogAPIClient::V2::EntityV3DatadogLogItem.new({}),
    ],
    performance_data: DatadogAPIClient::V2::EntityV3DatadogPerformance.new({
      tags: [],
    }),
    pipelines: DatadogAPIClient::V2::EntityV3DatadogPipelines.new({
      fingerprints: [],
    }),
  }),
  integrations: DatadogAPIClient::V2::EntityV3Integrations.new({
    opsgenie: DatadogAPIClient::V2::EntityV3DatadogIntegrationOpsgenie.new({
      service_url: "https://www.opsgenie.com/service/shopping-cart",
    }),
    pagerduty: DatadogAPIClient::V2::EntityV3DatadogIntegrationPagerduty.new({
      service_url: "https://www.pagerduty.com/service-directory/Pshopping-cart",
    }),
  }),
  kind: DatadogAPIClient::V2::EntityV3ServiceKind::SERVICE,
  metadata: DatadogAPIClient::V2::EntityV3Metadata.new({
    additional_owners: [],
    contacts: [
      DatadogAPIClient::V2::EntityV3MetadataContactsItems.new({
        contact: "https://slack/",
        type: "slack",
      }),
    ],
    id: "4b163705-23c0-4573-b2fb-f6cea2163fcb",
    inherit_from: "application:default/myapp",
    links: [
      DatadogAPIClient::V2::EntityV3MetadataLinksItems.new({
        name: "mylink",
        type: "link",
        url: "https://mylink",
      }),
    ],
    name: "myService",
    namespace: "default",
    tags: [
      "this:tag",
      "that:tag",
    ],
  }),
  spec: DatadogAPIClient::V2::EntityV3ServiceSpec.new({
    depends_on: [],
    languages: [],
  }),
})
p api_instance.upsert_catalog_entity(body)
