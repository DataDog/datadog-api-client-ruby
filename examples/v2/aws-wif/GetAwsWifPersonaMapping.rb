# Get an AWS WIF persona mapping returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AWSWIFAPI.new
p api_instance.get_aws_wif_persona_mapping("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d")
