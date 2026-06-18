# Get Vercel configuration returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::VercelAPI.new
p api_instance.get_vercel_config("configuration_id")
