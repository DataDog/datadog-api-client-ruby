# Acknowledge On-Call Page returns "Accepted." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::On - CallPagingAPI.new
p api_instance.acknowledge_on_call_page("15e74b8b-f865-48d0-bcc5-453323ed2c8f")
