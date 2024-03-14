# Create or update service definition returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceDefinitionAPI.new

body = DatadogAPIClient::V2::ServiceDefinitionV2Dot2.new({
  application: "my-app",
  ci_pipeline_fingerprints: [
    "j88xdEy0J5lc",
    "eZ7LMljCk8vo",
  ],
  contacts: [
    DatadogAPIClient::V2::ServiceDefinitionV2Dot2Contact.new({
      contact: "https://teams.microsoft.com/myteam",
      name: "My team channel",
      type: "slack",
    }),
  ],
  dd_service: "my-service",
  description: "My service description",
  extensions: {
    "myorg/extension": "extensionValue",
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
  languages: [
    "dotnet",
    "go",
    "java",
    "js",
    "php",
    "python",
    "ruby",
    "c++",
  ],
  lifecycle: "sandbox",
  links: [
    DatadogAPIClient::V2::ServiceDefinitionV2Dot2Link.new({
      name: "Runbook",
      provider: "Github",
      type: "runbook",
      url: "https://my-runbook",
    }),
  ],
  schema_version: DatadogAPIClient::V2::ServiceDefinitionV2Dot2Version::V2_2,
  tags: [
    "my:tag",
    "service:tag",
  ],
  team: "my-team",
  tier: "High",
  type: DatadogAPIClient::V2::ServiceDefinitionV2Dot2Type::WEB,
})
p api_instance.create_or_update_service_definitions(body)
