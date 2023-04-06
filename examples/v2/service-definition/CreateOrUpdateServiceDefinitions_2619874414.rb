# Create or update service definition using schema v2-1 returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceDefinitionAPI.new

body = DatadogAPIClient::V2::ServiceDefinitionV2Dot1.new({
  contacts: [
    DatadogAPIClient::V2::ServiceDefinitionV2Dot1Email.new({
      contact: "contact@datadoghq.com",
      name: "Team Email",
      type: DatadogAPIClient::V2::ServiceDefinitionV2Dot1EmailType::EMAIL,
    }),
  ],
  dd_service: "service-exampleservicedefinition",
  extensions: {
    "myorgextension": "extensionvalue",
  },
  integrations: DatadogAPIClient::V2::ServiceDefinitionV2Dot1Integrations.new({
    opsgenie: DatadogAPIClient::V2::ServiceDefinitionV2Dot1Opsgenie.new({
      region: DatadogAPIClient::V2::ServiceDefinitionV2Dot1OpsgenieRegion::US,
      service_url: "https://my-org.opsgenie.com/service/123e4567-e89b-12d3-a456-426614174000",
    }),
    pagerduty: DatadogAPIClient::V2::ServiceDefinitionV2Dot1Pagerduty.new({
      service_url: "https://my-org.pagerduty.com/service-directory/PMyService",
    }),
  }),
  links: [
    DatadogAPIClient::V2::ServiceDefinitionV2Dot1Link.new({
      name: "Runbook",
      type: DatadogAPIClient::V2::ServiceDefinitionV2Dot1LinkType::RUNBOOK,
      url: "https://my-runbook",
    }),
    DatadogAPIClient::V2::ServiceDefinitionV2Dot1Link.new({
      name: "Source Code",
      type: DatadogAPIClient::V2::ServiceDefinitionV2Dot1LinkType::REPO,
      provider: "GitHub",
      url: "https://github.com/DataDog/schema",
    }),
    DatadogAPIClient::V2::ServiceDefinitionV2Dot1Link.new({
      name: "Architecture",
      type: DatadogAPIClient::V2::ServiceDefinitionV2Dot1LinkType::DOC,
      provider: "Gigoogle drivetHub",
      url: "https://my-runbook",
    }),
  ],
  schema_version: DatadogAPIClient::V2::ServiceDefinitionV2Dot1Version::V2_1,
  tags: [
    "my:tag",
    "service:tag",
  ],
  team: "my-team",
})
p api_instance.create_or_update_service_definitions(body)
