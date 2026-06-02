# Delete a connected Salesforce organization returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SalesforceIntegrationAPI.new
api_instance.delete_salesforce_organization("salesforce_org_id")
