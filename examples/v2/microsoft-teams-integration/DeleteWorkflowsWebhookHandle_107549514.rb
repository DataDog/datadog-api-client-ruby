# Delete workflow webhook handle returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MicrosoftTeamsIntegrationAPI.new

# there is a valid "workflows_webhook_handle" in the system
WORKFLOWS_WEBHOOK_HANDLE_DATA_ID = ENV["WORKFLOWS_WEBHOOK_HANDLE_DATA_ID"]
api_instance.delete_workflows_webhook_handle(WORKFLOWS_WEBHOOK_HANDLE_DATA_ID)
