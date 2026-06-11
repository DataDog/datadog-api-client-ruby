# Get a user authorized client returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UserAuthorizedClientsAPI.new
p api_instance.get_user_authorized_client("00000000-0000-0000-0000-000000000001")
