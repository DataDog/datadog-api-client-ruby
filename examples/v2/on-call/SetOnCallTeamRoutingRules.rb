# Set on-call team routing rules returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]

# there is a valid "escalation_policy" in the system
ESCALATION_POLICY_DATA_ID = ENV["ESCALATION_POLICY_DATA_ID"]

body = DatadogAPIClient::V2::TeamRoutingRulesRequest.new({
  data: DatadogAPIClient::V2::TeamRoutingRulesRequestData.new({
    attributes: DatadogAPIClient::V2::TeamRoutingRulesRequestDataAttributes.new({
      rules: [
        DatadogAPIClient::V2::TeamRoutingRulesRequestRule.new({
          actions: [
            DatadogAPIClient::V2::SlackAction.new({
              channel: "channel",
              type: "send_slack_message",
              workspace: "workspace",
            }),
          ],
          query: "tags.service:test",
          time_restriction: DatadogAPIClient::V2::TimeRestrictions.new({
            time_zone: "Europe/Paris",
            restrictions: [
              DatadogAPIClient::V2::TimeRestriction.new({
                end_day: DatadogAPIClient::V2::Weekday::MONDAY,
                end_time: "17:00:00",
                start_day: DatadogAPIClient::V2::Weekday::MONDAY,
                start_time: "09:00:00",
              }),
              DatadogAPIClient::V2::TimeRestriction.new({
                end_day: DatadogAPIClient::V2::Weekday::TUESDAY,
                end_time: "17:00:00",
                start_day: DatadogAPIClient::V2::Weekday::TUESDAY,
                start_time: "09:00:00",
              }),
            ],
          }),
          urgency: DatadogAPIClient::V2::Urgency::HIGH,
        }),
        DatadogAPIClient::V2::TeamRoutingRulesRequestRule.new({
          policy_id: ESCALATION_POLICY_DATA_ID,
          query: "",
          urgency: DatadogAPIClient::V2::Urgency::LOW,
        }),
      ],
    }),
    id: DD_TEAM_DATA_ID,
    type: DatadogAPIClient::V2::TeamRoutingRulesRequestDataType::TEAM_ROUTING_RULES,
  }),
})
p api_instance.set_on_call_team_routing_rules(DD_TEAM_DATA_ID, body)
