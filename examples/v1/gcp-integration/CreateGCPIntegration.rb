# Create a GCP integration returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::GCPIntegrationAPI.new

body = DatadogAPIClient::V1::GCPAccount.new({
  auth_provider_x509_cert_url: "https://www.googleapis.com/oauth2/v1/certs",
  auth_uri: "https://accounts.google.com/o/oauth2/auth",
  client_email: "api-dev@datadog-sandbox.iam.gserviceaccount.com",
  client_id: "123456712345671234567",
  client_x509_cert_url: "https://www.googleapis.com/robot/v1/metadata/x509/$CLIENT_EMAIL",
  errors: [
    "*",
  ],
  host_filters: "key:value,filter:example",
  private_key: "private_key",
  private_key_id: "123456789abcdefghi123456789abcdefghijklm",
  project_id: "datadog-apitest",
  token_uri: "https://accounts.google.com/o/oauth2/token",
  type: "service_account",
})
p api_instance.create_gcp_integration(body)
