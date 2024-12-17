# Get all CSM Serverless Agents returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CSMAgentsAPI.new
p api_instance.list_all_csm_serverless_agents()
