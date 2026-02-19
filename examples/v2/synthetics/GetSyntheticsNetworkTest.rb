# Synthetics: Get a Network Path test returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new
p api_instance.get_synthetics_network_test("amg-96x-tps")
