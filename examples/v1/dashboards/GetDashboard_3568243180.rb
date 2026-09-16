# Get a dashboard with five team tags and two AI tags

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

# there is a valid "dashboard_with_team_and_ai_tags" in the system
DASHBOARD_WITH_TEAM_AND_AI_TAGS_ID = ENV["DASHBOARD_WITH_TEAM_AND_AI_TAGS_ID"]
p api_instance.get_dashboard(DASHBOARD_WITH_TEAM_AND_AI_TAGS_ID)
