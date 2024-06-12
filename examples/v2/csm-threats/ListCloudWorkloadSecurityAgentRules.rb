# Get all Cloud Workload Security Agent rules returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CSMThreatsAPI.new
p api_instance.list_cloud_workload_security_agent_rules()
