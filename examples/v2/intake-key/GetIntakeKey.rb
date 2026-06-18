# Get an intake API key returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::IntakeKeyAPI.new
p api_instance.get_intake_key()
