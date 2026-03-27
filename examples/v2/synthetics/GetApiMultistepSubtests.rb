# Get available subtests for a multistep test returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new
p api_instance.get_api_multistep_subtests("public_id")
