# Get all connected Salesforce organizations returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SalesforceIntegrationAPI.new
p api_instance.get_salesforce_organizations()
