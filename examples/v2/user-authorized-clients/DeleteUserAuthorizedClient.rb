# Delete a user authorized client returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UserAuthorizedClientsAPI.new
api_instance.delete_user_authorized_client("00000000-0000-0000-0000-000000000001")
