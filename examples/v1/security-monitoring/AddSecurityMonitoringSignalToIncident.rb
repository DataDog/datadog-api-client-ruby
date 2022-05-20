# Add a security signal to an incident returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SecurityMonitoringAPI.new

body = DatadogAPIClient::V1::AddSignalToIncidentRequest.new({
  incident_id: 2609,
})
p api_instance.add_security_monitoring_signal_to_incident("AQAAAYDiB_Ol8PbzFAAAAABBWURpQl9PbEFBQU0yeXhGTG9ZV2JnQUE", body)
