# Get an existing Action Connection returns "Successfully got an Action Connection." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new
p api_instance.get_action_connection("connection_id")
