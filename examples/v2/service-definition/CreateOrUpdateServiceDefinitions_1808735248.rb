# Create or update service definition using schema v2 returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceDefinitionAPI.new

body = DatadogAPIClient::V2::ServiceDefinitionV2.new({
  contacts: [
    DatadogAPIClient::V2::ServiceDefinitionV2Email.new({
      contact: "contact@datadoghq.com",
      name: "Team Email",
      type: DatadogAPIClient::V2::ServiceDefinitionV2EmailType::EMAIL,
    }),
  ],
  dd_service: "service-exampleservicedefinition",
  dd_team: "my-team",
  docs: [
    DatadogAPIClient::V2::ServiceDefinitionV2Doc.new({
      name: "Architecture",
      provider: "google drive",
      url: "https://gdrive/mydoc",
    }),
  ],
  extensions: {
    "myorgextension": "extensionvalue",
  },
  integrations: DatadogAPIClient::V2::ServiceDefinitionV2Integrations.new({
    opsgenie: DatadogAPIClient::V2::ServiceDefinitionV2Opsgenie.new({
      region: DatadogAPIClient::V2::ServiceDefinitionV2OpsgenieRegion::US,
      service_url: "https://my-org.opsgenie.com/service/123e4567-e89b-12d3-a456-426614174000",
    }),
    pagerduty: "https://my-org.pagerduty.com/service-directory/PMyService",
  }),
  links: [
    DatadogAPIClient::V2::ServiceDefinitionV2Link.new({
      name: "Runbook",
      type: DatadogAPIClient::V2::ServiceDefinitionV2LinkType::RUNBOOK,
      url: "https://my-runbook",
    }),
  ],
  repos: [
    DatadogAPIClient::V2::ServiceDefinitionV2Repo.new({
      name: "Source Code",
      provider: "GitHub",
      url: "https://github.com/DataDog/schema",
    }),
  ],
  schema_version: DatadogAPIClient::V2::ServiceDefinitionV2Version::V2,
  tags: [
    "my:tag",
    "service:tag",
  ],
  team: "my-team",
})
p api_instance.create_or_update_service_definitions(body)
