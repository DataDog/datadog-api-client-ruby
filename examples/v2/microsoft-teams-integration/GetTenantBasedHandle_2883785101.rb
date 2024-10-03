# Get api handle information returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MicrosoftTeamsIntegrationAPI.new

# there is a valid "tenant_based_handle" in the system
TENANT_BASED_HANDLE_DATA_ID = ENV["TENANT_BASED_HANDLE_DATA_ID"]
p api_instance.get_tenant_based_handle(TENANT_BASED_HANDLE_DATA_ID)
