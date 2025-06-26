# Get an existing App Key Registration returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new
p api_instance.get_app_key_registration("b7feea52-994e-4714-a100-1bd9eff5aee1")
