# Get All Containers returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ContainersAPI.new
p api_instance.list_containers()
