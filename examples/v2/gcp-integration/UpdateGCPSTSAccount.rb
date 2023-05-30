# Update STS Service Account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GCPIntegrationAPI.new

body = DatadogAPIClient::V2::GCPSTSServiceAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::GCPSTSServiceAccountUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::GCPSTSServiceAccountAttributes.new({
      client_email: "datadog-service-account@test-project.iam.gserviceaccount.com",
      host_filters: [],
    }),
    id: "d291291f-12c2-22g4-j290-123456678897",
    type: DatadogAPIClient::V2::GCPServiceAccountType::GCP_SERVICE_ACCOUNT,
  }),
})
p api_instance.update_gcpsts_account("account_id", body)
