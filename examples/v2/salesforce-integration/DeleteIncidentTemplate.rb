# Delete a Salesforce incident template returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::SalesforceIntegrationAPI.new
api_instance.delete_incident_template("incident_template_id")
