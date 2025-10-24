# List AWS on demand tasks returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AgentlessScanningAPI.new
p api_instance.list_aws_on_demand_tasks()
