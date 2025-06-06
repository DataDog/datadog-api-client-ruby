# Update On-Call escalation policy returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new

# there is a valid "escalation_policy" in the system
ESCALATION_POLICY_DATA_ID = ENV["ESCALATION_POLICY_DATA_ID"]
ESCALATION_POLICY_DATA_RELATIONSHIPS_STEPS_DATA_0_ID = ENV["ESCALATION_POLICY_DATA_RELATIONSHIPS_STEPS_DATA_0_ID"]

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]

body = DatadogAPIClient::V2::EscalationPolicyUpdateRequest.new({
  data: DatadogAPIClient::V2::EscalationPolicyUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::EscalationPolicyUpdateRequestDataAttributes.new({
      name: "Example-On-Call-updated",
      resolve_page_on_policy_end: false,
      retries: 0,
      steps: [
        DatadogAPIClient::V2::EscalationPolicyUpdateRequestDataAttributesStepsItems.new({
          assignment: DatadogAPIClient::V2::EscalationPolicyStepAttributesAssignment::DEFAULT,
          escalate_after_seconds: 3600,
          id: ESCALATION_POLICY_DATA_RELATIONSHIPS_STEPS_DATA_0_ID,
          targets: [
            DatadogAPIClient::V2::EscalationPolicyStepTarget.new({
              id: USER_DATA_ID,
              type: DatadogAPIClient::V2::EscalationPolicyStepTargetType::USERS,
            }),
          ],
        }),
      ],
    }),
    id: ESCALATION_POLICY_DATA_ID,
    relationships: DatadogAPIClient::V2::EscalationPolicyUpdateRequestDataRelationships.new({
      teams: DatadogAPIClient::V2::DataRelationshipsTeams.new({
        data: [
          DatadogAPIClient::V2::DataRelationshipsTeamsDataItems.new({
            id: DD_TEAM_DATA_ID,
            type: DatadogAPIClient::V2::DataRelationshipsTeamsDataItemsType::TEAMS,
          }),
        ],
      }),
    }),
    type: DatadogAPIClient::V2::EscalationPolicyUpdateRequestDataType::POLICIES,
  }),
})
p api_instance.update_on_call_escalation_policy(ESCALATION_POLICY_DATA_ID, body)
