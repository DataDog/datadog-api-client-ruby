# Get the latest CSM Threats policy returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CSMThreatsAPI.new
p api_instance.download_csm_threats_policy()
