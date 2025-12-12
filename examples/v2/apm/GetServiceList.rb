# Get service list returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::APMAPI.new
p api_instance.get_service_list()
