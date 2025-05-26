# Create On-Call schedule returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]

body = DatadogAPIClient::V2::ScheduleCreateRequest.new({
  data: DatadogAPIClient::V2::ScheduleCreateRequestData.new({
    attributes: DatadogAPIClient::V2::ScheduleCreateRequestDataAttributes.new({
      layers: [
        DatadogAPIClient::V2::ScheduleCreateRequestDataAttributesLayersItems.new({
          effective_date: (Time.now + -10 * 86400),
          end_date: (Time.now + 10 * 86400),
          interval: DatadogAPIClient::V2::LayerAttributesInterval.new({
            days: 1,
          }),
          members: [
            DatadogAPIClient::V2::ScheduleRequestDataAttributesLayersItemsMembersItems.new({
              user: DatadogAPIClient::V2::ScheduleRequestDataAttributesLayersItemsMembersItemsUser.new({
                id: USER_DATA_ID,
              }),
            }),
          ],
          name: "Layer 1",
          restrictions: [
            DatadogAPIClient::V2::TimeRestriction.new({
              end_day: DatadogAPIClient::V2::Weekday::FRIDAY,
              end_time: "17:00:00",
              start_day: DatadogAPIClient::V2::Weekday::MONDAY,
              start_time: "09:00:00",
            }),
          ],
          rotation_start: (Time.now + -5 * 86400),
        }),
      ],
      name: "Example-On-Call",
      time_zone: "America/New_York",
    }),
    relationships: DatadogAPIClient::V2::ScheduleCreateRequestDataRelationships.new({
      teams: DatadogAPIClient::V2::DataRelationshipsTeams.new({
        data: [
          DatadogAPIClient::V2::DataRelationshipsTeamsDataItems.new({
            id: DD_TEAM_DATA_ID,
            type: DatadogAPIClient::V2::DataRelationshipsTeamsDataItemsType::TEAMS,
          }),
        ],
      }),
    }),
    type: DatadogAPIClient::V2::ScheduleCreateRequestDataType::SCHEDULES,
  }),
})
p api_instance.create_on_call_schedule(body)
