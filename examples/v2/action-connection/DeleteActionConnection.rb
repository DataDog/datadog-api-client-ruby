# Delete an existing Action Connection returns "The resource was deleted successfully." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new
api_instance.delete_action_connection("connection_id")
