# Create or update service definition using schema v2-2 returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceDefinitionAPI.new

body = DatadogAPIClient::V2::ServiceDefinitionV2Dot2.new({
  contacts: [
    DatadogAPIClient::V2::ServiceDefinitionV2Dot2Contact.new({
      contact: "contact@datadoghq.com",
      name: "Team Email",
      type: "email",
    }),
  ],
  dd_service: "service-exampleservicedefinition",
  extensions: {
    "myorgextension": "extensionvalue",
  },
  integrations: DatadogAPIClient::V2::ServiceDefinitionV2Dot2Integrations.new({
    opsgenie: DatadogAPIClient::V2::ServiceDefinitionV2Dot2Opsgenie.new({
      region: DatadogAPIClient::V2::ServiceDefinitionV2Dot2OpsgenieRegion::US,
      service_url: "https://my-org.opsgenie.com/service/123e4567-e89b-12d3-a456-426614174000",
    }),
    pagerduty: DatadogAPIClient::V2::ServiceDefinitionV2Dot2Pagerduty.new({
      service_url: "https://my-org.pagerduty.com/service-directory/PMyService",
    }),
  }),
  links: [
    DatadogAPIClient::V2::ServiceDefinitionV2Dot2Link.new({
      name: "Runbook",
      type: "runbook",
      url: "https://my-runbook",
    }),
    DatadogAPIClient::V2::ServiceDefinitionV2Dot2Link.new({
      name: "Source Code",
      type: "repo",
      provider: "GitHub",
      url: "https://github.com/DataDog/schema",
    }),
    DatadogAPIClient::V2::ServiceDefinitionV2Dot2Link.new({
      name: "Architecture",
      type: "doc",
      provider: "Gigoogle drivetHub",
      url: "https://my-runbook",
    }),
  ],
  schema_version: DatadogAPIClient::V2::ServiceDefinitionV2Dot2Version::V2_2,
  tags: [
    "my:tag",
    "service:tag",
  ],
  team: "my-team",
})
p api_instance.create_or_update_service_definitions(body)
