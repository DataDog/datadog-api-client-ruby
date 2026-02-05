# Delete postmortem template returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_incident_postmortem_template".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new
api_instance.delete_incident_postmortem_template("template-456")
