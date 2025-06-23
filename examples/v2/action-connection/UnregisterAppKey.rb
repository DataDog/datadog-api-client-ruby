# Unregister an App Key returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new
api_instance.unregister_app_key("57cc69ae-9214-4ecc-8df8-43ecc1d92d99")
