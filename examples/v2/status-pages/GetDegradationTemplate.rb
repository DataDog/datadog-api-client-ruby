# Get degradation template returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new
p api_instance.get_degradation_template("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d")
