# Revert App returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AppBuilderAPI.new
p api_instance.revert_app("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", "version")
