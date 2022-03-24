# Get details of batch returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
p api_instance.get_synthetics_ci_batch("batch_id")
