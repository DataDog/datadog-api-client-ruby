require 'datadog_api_client'

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:get_incident_team] = true
end

api_instance = DatadogAPIClient::V2::IncidentTeamsAPI.new
team_id = 'team_id_example' # String | The ID of the incident team.
opts = {
  include: DatadogAPIClient::V2::IncidentRelatedObject::USERS # IncidentRelatedObject | Specifies which types of related objects should be included in the response.
}

begin
  # Get details of an incident team
  result = api_instance.get_incident_team(team_id, opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentTeamsAPI->get_incident_team: #{e}"
end
