# Delete all user authorized clients for a client returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::UserAuthorizedClientsAPI.new
api_instance.delete_user_authorized_clients_by_client("00000000-0000-0000-0000-000000000010")
