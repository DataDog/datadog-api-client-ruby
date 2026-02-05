# Get seats users for a product code returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SeatsAPI.new
p api_instance.get_seats_users_v2("product_code")
