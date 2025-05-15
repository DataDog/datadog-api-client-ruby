# Get all Workload Protection agent rules returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CSMThreatsAPI.new
p api_instance.list_csm_threats_agent_rules()
