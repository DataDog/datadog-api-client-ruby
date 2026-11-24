# List a source's external team permission defaults returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::TeamsAPI.new
p api_instance.list_external_team_permission_setting_defaults_by_source(ExternalTeamPermissionSettingDefaultsSource::SCIM)
