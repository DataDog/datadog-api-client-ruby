# Get api handle information returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MicrosoftTeamsIntegrationAPI.new

# there is a valid "api_handle" in the system
API_HANDLE_DATA_ID = ENV["API_HANDLE_DATA_ID"]
p api_instance.get_api_handle(API_HANDLE_DATA_ID)
