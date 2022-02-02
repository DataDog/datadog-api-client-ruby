require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:create_incident_team] = true
end

api_instance = DatadogAPIClient::V2::IncidentTeamsAPI.new
body = DatadogAPIClient::V2::IncidentTeamCreateRequest.new({data: DatadogAPIClient::V2::IncidentTeamCreateData.new({type: DatadogAPIClient::V2::IncidentTeamType::TEAMS})}) # IncidentTeamCreateRequest | Incident Team Payload.

begin
  # Create a new incident team
  result = api_instance.create_incident_team(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentTeamsAPI->create_incident_team: #{e}"
end
