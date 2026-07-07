# List user authorized clients returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UserAuthorizedClientsAPI.new
p api_instance.list_user_authorized_clients()
