# Create a Datadog GCP principal with empty body returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GCPIntegrationAPI.new

body = {}
opts = {
  body: body,
}
p api_instance.make_gcpsts_delegate(opts)
