# Get all Workload Protection agent rules (US1-FED) returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CSMThreatsAPI.new
p api_instance.list_cloud_workload_security_agent_rules()
