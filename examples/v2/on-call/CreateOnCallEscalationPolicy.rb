# Create On-Call escalation policy returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

# there is a valid "schedule" in the system
SCHEDULE_DATA_ID = ENV["SCHEDULE_DATA_ID"]

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]

body = DatadogAPIClient::V2::EscalationPolicyCreateRequest.new({
  data: DatadogAPIClient::V2::EscalationPolicyCreateRequestData.new({
    attributes: DatadogAPIClient::V2::EscalationPolicyCreateRequestDataAttributes.new({
      name: "Example-On-Call",
      resolve_page_on_policy_end: true,
      retries: 2,
      steps: [
        DatadogAPIClient::V2::EscalationPolicyCreateRequestDataAttributesStepsItems.new({
          assignment: DatadogAPIClient::V2::EscalationPolicyStepAttributesAssignment::DEFAULT,
          escalate_after_seconds: 3600,
          targets: [
            DatadogAPIClient::V2::EscalationPolicyStepTarget.new({
              id: USER_DATA_ID,
              type: DatadogAPIClient::V2::EscalationPolicyStepTargetType::USERS,
            }),
            DatadogAPIClient::V2::EscalationPolicyStepTarget.new({
              id: SCHEDULE_DATA_ID,
              type: DatadogAPIClient::V2::EscalationPolicyStepTargetType::SCHEDULES,
            }),
            DatadogAPIClient::V2::EscalationPolicyStepTarget.new({
              id: DD_TEAM_DATA_ID,
              type: DatadogAPIClient::V2::EscalationPolicyStepTargetType::TEAMS,
            }),
          ],
        }),
        DatadogAPIClient::V2::EscalationPolicyCreateRequestDataAttributesStepsItems.new({
          assignment: DatadogAPIClient::V2::EscalationPolicyStepAttributesAssignment::ROUND_ROBIN,
          escalate_after_seconds: 3600,
          targets: [
            DatadogAPIClient::V2::EscalationPolicyStepTarget.new({
              id: DD_TEAM_DATA_ID,
              type: DatadogAPIClient::V2::EscalationPolicyStepTargetType::TEAMS,
            }),
          ],
        }),
      ],
    }),
    relationships: DatadogAPIClient::V2::EscalationPolicyCreateRequestDataRelationships.new({
      teams: DatadogAPIClient::V2::DataRelationshipsTeams.new({
        data: [
          DatadogAPIClient::V2::DataRelationshipsTeamsDataItems.new({
            id: DD_TEAM_DATA_ID,
            type: DatadogAPIClient::V2::DataRelationshipsTeamsDataItemsType::TEAMS,
          }),
        ],
      }),
    }),
    type: DatadogAPIClient::V2::EscalationPolicyCreateRequestDataType::POLICIES,
  }),
})
opts = {
  include: "steps.targets",
}
p api_instance.create_on_call_escalation_policy(body, opts)
