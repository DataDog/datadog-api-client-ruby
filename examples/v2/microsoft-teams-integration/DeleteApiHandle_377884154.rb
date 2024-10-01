# Delete api handle returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MicrosoftTeamsIntegrationAPI.new

# there is a valid "api_handle" in the system
API_HANDLE_DATA_ID = ENV["API_HANDLE_DATA_ID"]
api_instance.delete_api_handle(API_HANDLE_DATA_ID)
