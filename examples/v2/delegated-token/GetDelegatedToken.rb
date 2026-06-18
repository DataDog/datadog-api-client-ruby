# Get a delegated token returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DelegatedTokenAPI.new
p api_instance.get_delegated_token()
