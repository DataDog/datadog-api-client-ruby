# Get the scheduled on-call user returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new
p api_instance.get_schedule_on_call_user("3653d3c6-0c75-11ea-ad28-fb5701eabc7d")
