# Update permission setting for team returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamsAPI.new

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]

body = DatadogAPIClient::V2::TeamPermissionSettingUpdateRequest.new({
  data: DatadogAPIClient::V2::TeamPermissionSettingUpdate.new({
    attributes: DatadogAPIClient::V2::TeamPermissionSettingUpdateAttributes.new({
      value: DatadogAPIClient::V2::TeamPermissionSettingValue::ADMINS,
    }),
    type: DatadogAPIClient::V2::TeamPermissionSettingType::TEAM_PERMISSION_SETTINGS,
  }),
})
p api_instance.update_team_permission_setting(DD_TEAM_DATA_ID, "manage_membership", body)
