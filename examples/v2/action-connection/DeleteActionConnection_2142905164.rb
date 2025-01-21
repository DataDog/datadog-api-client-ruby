# Delete an existing Action Connection returns "Successfully deleted Action Connection" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new

# there is a valid "action_connection" in the system
ACTION_CONNECTION_DATA_ID = ENV["ACTION_CONNECTION_DATA_ID"]
api_instance.delete_action_connection(ACTION_CONNECTION_DATA_ID)
