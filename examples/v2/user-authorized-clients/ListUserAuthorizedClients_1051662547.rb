# List user authorized clients returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UserAuthorizedClientsAPI.new
api_instance.list_user_authorized_clients_with_pagination() { |item| puts item }
