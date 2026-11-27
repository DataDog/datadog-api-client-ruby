# Update an external team permission default returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::TeamsAPI.new

body = DatadogAPIClient::V2::ExternalTeamPermissionSettingDefaultUpdateRequest.new({
  data: DatadogAPIClient::V2::ExternalTeamPermissionSettingDefaultUpdateData.new({
    attributes: DatadogAPIClient::V2::ExternalTeamPermissionSettingDefaultUpdateAttributes.new({
      value: "user_access_manage",
    }),
    id: "scim:add_and_remove_subteam",
    type: DatadogAPIClient::V2::ExternalTeamPermissionSettingDefaultsType::EXTERNAL_TEAM_PERMISSION_SETTING_DEFAULTS,
  }),
})
p api_instance.update_external_team_permission_setting_default(ExternalTeamPermissionSettingDefaultsSource::SCIM, "add_and_remove_subteam", body)
