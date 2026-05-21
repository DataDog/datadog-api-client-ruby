# Export incidents returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.export_incidents".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentSearchIncidentsExportRequest.new({
  fields: [
    "title",
    "severity",
    "state",
  ],
  query: "state:active",
})
p api_instance.export_incidents(body)
