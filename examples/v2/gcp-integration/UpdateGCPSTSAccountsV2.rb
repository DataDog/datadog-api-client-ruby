# Update STS Service Account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GCPIntegrationAPI.new

body = DatadogAPIClient::V2::AccountPatchBody.new({
  data: DatadogAPIClient::V2::ServiceAccountInfoPatch.new({
    attributes: DatadogAPIClient::V2::AccountAttributes.new({
      client_email: "datadog-service-account@test-project.iam.gserviceaccount.com",
      host_filters: [],
    }),
    id: "d291291f-12c2-22g4-j290-123456678897",
    type: "gcp_service_account",
  }),
})
p api_instance.update_gcpsts_accounts_v2("account_id", body)
