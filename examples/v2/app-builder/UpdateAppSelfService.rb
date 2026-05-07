# Update App Self-Service Status returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AppBuilderAPI.new

body = DatadogAPIClient::V2::UpdateAppSelfServiceRequest.new({
  data: DatadogAPIClient::V2::UpdateAppSelfServiceRequestData.new({
    attributes: DatadogAPIClient::V2::UpdateAppSelfServiceRequestDataAttributes.new({
      self_service: true,
    }),
    type: DatadogAPIClient::V2::AppSelfServiceType::SELFSERVICE,
  }),
})
p api_instance.update_app_self_service("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
