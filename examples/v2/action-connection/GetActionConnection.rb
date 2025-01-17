# Get an existing Action Connection returns "Successfully get Action Connection" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new
p api_instance.get_action_connection("cb460d51-3c88-4e87-adac-d47131d0423d")
