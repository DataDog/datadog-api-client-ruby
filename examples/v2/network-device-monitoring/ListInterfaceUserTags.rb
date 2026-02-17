# List tags for an interface returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::NetworkDeviceMonitoringAPI.new
p api_instance.list_interface_user_tags("example:1.2.3.4:1")
