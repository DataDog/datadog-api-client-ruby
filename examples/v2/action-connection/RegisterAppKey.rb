# Register a new App Key returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionConnectionAPI.new
p api_instance.register_app_key("b7feea52-994e-4714-a100-1bd9eff5aee1")
