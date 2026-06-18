# List AWS WIF intake mappings returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AWSWIFAPI.new
p api_instance.list_aws_wif_intake_mappings()
