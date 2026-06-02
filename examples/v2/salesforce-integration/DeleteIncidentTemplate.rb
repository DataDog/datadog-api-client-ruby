# Delete a Salesforce incident template returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SalesforceIntegrationAPI.new
api_instance.delete_incident_template("incident_template_id")
