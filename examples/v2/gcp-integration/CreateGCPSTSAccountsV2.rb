# Create a new entry for your service account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GCPIntegrationAPI.new

body = DatadogAPIClient::V2::ServiceAccountToBeCreatedData.new({
  data: DatadogAPIClient::V2::ServiceAccountMetadata.new({
    attributes: DatadogAPIClient::V2::AttributeMetadata.new({
      client_email: "dd-integration@datadog-staging.iam.gserviceaccount.com",
      host_filters: [],
    }),
  }),
})
p api_instance.create_gcpsts_accounts_v2(body)
