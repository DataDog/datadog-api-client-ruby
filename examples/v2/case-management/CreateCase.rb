# Create a case returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

body = DatadogAPIClient::V2::CaseCreateRequest.new({
  data: DatadogAPIClient::V2::CaseCreate.new({
    attributes: DatadogAPIClient::V2::CaseCreateAttributes.new({
      priority: DatadogAPIClient::V2::CasePriority::NOT_DEFINED,
      title: "Security breach investigation in 0cfbc5cbc676ee71",
      type: DatadogAPIClient::V2::CaseType::STANDARD,
    }),
    relationships: DatadogAPIClient::V2::CaseCreateRelationships.new({
      assignee: DatadogAPIClient::V2::NullableUserRelationship.new({
        data: DatadogAPIClient::V2::NullableUserRelationshipData.new({
          id: USER_DATA_ID,
          type: DatadogAPIClient::V2::UserResourceType::USER,
        }),
      }),
      project: DatadogAPIClient::V2::ProjectRelationship.new({
        data: DatadogAPIClient::V2::ProjectRelationshipData.new({
          id: "d4bbe1af-f36e-42f1-87c1-493ca35c320e",
          type: DatadogAPIClient::V2::ProjectResourceType::PROJECT,
        }),
      }),
    }),
    type: DatadogAPIClient::V2::CaseResourceType::CASE,
  }),
})
p api_instance.create_case(body)
