# Delete api handle returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MicrosoftTeamsIntegrationAPI.new

# there is a valid "tenant_based_handle" in the system
TENANT_BASED_HANDLE_DATA_ID = ENV["TENANT_BASED_HANDLE_DATA_ID"]
api_instance.delete_tenant_based_handle(TENANT_BASED_HANDLE_DATA_ID)
