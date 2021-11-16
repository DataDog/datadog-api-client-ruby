# Get a list of incidents returns "OK" response

require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::IncidentsAPI.new
p api_instance.list_incidents()
