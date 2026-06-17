# Delete an AWS WIF intake mapping returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AWSWIFAPI.new
api_instance.delete_aws_wif_intake_mapping("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d")
