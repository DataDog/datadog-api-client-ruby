# Update on-call schedule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new

# there is a valid "schedule" in the system
SCHEDULE_DATA_ID = ENV["SCHEDULE_DATA_ID"]
SCHEDULE_DATA_RELATIONSHIPS_LAYERS_DATA_0_ID = ENV["SCHEDULE_DATA_RELATIONSHIPS_LAYERS_DATA_0_ID"]

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]

body = DatadogAPIClient::V2::ScheduleUpdateRequest.new({
  data: DatadogAPIClient::V2::ScheduleUpdateRequestData.new({
    id: SCHEDULE_DATA_ID,
    attributes: DatadogAPIClient::V2::ScheduleUpdateRequestDataAttributes.new({
      layers: [
        DatadogAPIClient::V2::ScheduleUpdateRequestDataAttributesLayersItems.new({
          id: SCHEDULE_DATA_RELATIONSHIPS_LAYERS_DATA_0_ID,
          effective_date: (Time.now + -10 * 86400),
          end_date: (Time.now + 10 * 86400),
          interval: DatadogAPIClient::V2::ScheduleUpdateRequestDataAttributesLayersItemsInterval.new({
            seconds: 300,
          }),
          members: [
            DatadogAPIClient::V2::ScheduleUpdateRequestDataAttributesLayersItemsMembersItems.new({
              user: DatadogAPIClient::V2::ScheduleUpdateRequestDataAttributesLayersItemsMembersItemsUser.new({
                id: USER_DATA_ID,
              }),
            }),
          ],
          name: "Layer 1",
          restrictions: [
            DatadogAPIClient::V2::ScheduleUpdateRequestDataAttributesLayersItemsRestrictionsItems.new({
              end_day: DatadogAPIClient::V2::ScheduleUpdateRequestDataAttributesLayersItemsRestrictionsItemsEndDay::FRIDAY,
              end_time: "17:00:00",
              start_day: DatadogAPIClient::V2::ScheduleUpdateRequestDataAttributesLayersItemsRestrictionsItemsStartDay::MONDAY,
              start_time: "09:00:00",
            }),
          ],
          rotation_start: (Time.now + -5 * 86400),
        }),
      ],
      name: "Example-On-Call",
      tags: [
        "tag1",
        "tag2",
        "tag3",
      ],
      time_zone: "America/New_York",
    }),
    relationships: DatadogAPIClient::V2::ScheduleUpdateRequestDataRelationships.new({
      teams: DatadogAPIClient::V2::ScheduleUpdateRequestDataRelationshipsTeams.new({
        data: [
          DatadogAPIClient::V2::ScheduleUpdateRequestDataRelationshipsTeamsDataItems.new({
            id: DD_TEAM_DATA_ID,
            type: DatadogAPIClient::V2::ScheduleUpdateRequestDataRelationshipsTeamsDataItemsType::TEAMS,
          }),
        ],
      }),
    }),
    type: DatadogAPIClient::V2::ScheduleUpdateRequestDataType::SCHEDULES,
  }),
})
p api_instance.update_on_call_schedule(SCHEDULE_DATA_ID, body)
