# Get api handle information by name returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MicrosoftTeamsIntegrationAPI.new

# there is a valid "api_handle" in the system
API_HANDLE_DATA_ATTRIBUTES_NAME = ENV["API_HANDLE_DATA_ATTRIBUTES_NAME"]
p api_instance.get_api_handle_by_name(API_HANDLE_DATA_ATTRIBUTES_NAME)
