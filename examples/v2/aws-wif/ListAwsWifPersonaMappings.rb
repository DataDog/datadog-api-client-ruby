# List AWS WIF persona mappings returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AWSWIFAPI.new
p api_instance.list_aws_wif_persona_mappings()
