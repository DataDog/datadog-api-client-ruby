# Delete an external team permission default returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::TeamsAPI.new
api_instance.delete_external_team_permission_setting_default(ExternalTeamPermissionSettingDefaultsSource::SCIM, "add_and_remove_subteam")
