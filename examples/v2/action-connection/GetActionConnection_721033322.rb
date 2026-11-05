# Get a GCP Action Connection preserves AWS Secrets Manager references

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new

# there is a valid "gcp_action_connection" in the system
GCP_ACTION_CONNECTION_DATA_ID = ENV["GCP_ACTION_CONNECTION_DATA_ID"]
p api_instance.get_action_connection(GCP_ACTION_CONNECTION_DATA_ID)
