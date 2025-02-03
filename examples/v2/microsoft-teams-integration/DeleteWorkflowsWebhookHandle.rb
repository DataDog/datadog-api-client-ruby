# Delete Workflows webhook handle returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MicrosoftTeamsIntegrationAPI.new
api_instance.delete_workflows_webhook_handle("handle_id")
