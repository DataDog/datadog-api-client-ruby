# Create on-call escalation policy returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::On - CallAPI.new

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

# there is a valid "schedule" in the system
SCHEDULE_DATA_ID = ENV["SCHEDULE_DATA_ID"]

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]

body = DatadogAPIClient::V2::EscalationPolicyCreateRequest.new({
  data: DatadogAPIClient::V2::EscalationPolicyCreateRequestData.new({
    attributes: DatadogAPIClient::V2::EscalationPolicyCreateRequestDataAttributes.new({
      description: "Escalation Policy 1 description",
      name: "Example-On-Call",
      resolve_page_on_policy_end: true,
      retries: 2,
      steps: [
        DatadogAPIClient::V2::EscalationPolicyCreateRequestDataAttributesStepsItems.new({
          assignment: DatadogAPIClient::V2::EscalationPolicyCreateRequestDataAttributesStepsItemsAssignment::DEFAULT,
          escalate_after_seconds: 3600,
          targets: [
            DatadogAPIClient::V2::EscalationPolicyCreateRequestDataAttributesStepsItemsTargetsItems.new({
              id: USER_DATA_ID,
              type: DatadogAPIClient::V2::EscalationPolicyCreateRequestDataAttributesStepsItemsTargetsItemsType::USERS,
            }),
            DatadogAPIClient::V2::EscalationPolicyCreateRequestDataAttributesStepsItemsTargetsItems.new({
              id: SCHEDULE_DATA_ID,
              type: DatadogAPIClient::V2::EscalationPolicyCreateRequestDataAttributesStepsItemsTargetsItemsType::SCHEDULES,
            }),
            DatadogAPIClient::V2::EscalationPolicyCreateRequestDataAttributesStepsItemsTargetsItems.new({
              id: DD_TEAM_DATA_ID,
              type: DatadogAPIClient::V2::EscalationPolicyCreateRequestDataAttributesStepsItemsTargetsItemsType::TEAMS,
            }),
          ],
        }),
        DatadogAPIClient::V2::EscalationPolicyCreateRequestDataAttributesStepsItems.new({
          assignment: DatadogAPIClient::V2::EscalationPolicyCreateRequestDataAttributesStepsItemsAssignment::ROUND_ROBIN,
          escalate_after_seconds: 3600,
          targets: [
            DatadogAPIClient::V2::EscalationPolicyCreateRequestDataAttributesStepsItemsTargetsItems.new({
              id: DD_TEAM_DATA_ID,
              type: DatadogAPIClient::V2::EscalationPolicyCreateRequestDataAttributesStepsItemsTargetsItemsType::TEAMS,
            }),
          ],
        }),
      ],
    }),
    relationships: DatadogAPIClient::V2::EscalationPolicyCreateRequestDataRelationships.new({
      teams: DatadogAPIClient::V2::EscalationPolicyCreateRequestDataRelationshipsTeams.new({
        data: [
          DatadogAPIClient::V2::EscalationPolicyCreateRequestDataRelationshipsTeamsDataItems.new({
            id: DD_TEAM_DATA_ID,
            type: DatadogAPIClient::V2::EscalationPolicyCreateRequestDataRelationshipsTeamsDataItemsType::TEAMS,
          }),
        ],
      }),
    }),
    type: DatadogAPIClient::V2::EscalationPolicyCreateRequestDataType::POLICIES,
  }),
})
p api_instance.create_on_call_escalation_policy(body)
