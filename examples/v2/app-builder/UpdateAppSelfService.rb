# Update App Self-Service Status returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AppBuilderAPI.new

# there is a valid "app" in the system
APP_DATA_ID = ENV["APP_DATA_ID"]

body = DatadogAPIClient::V2::UpdateAppSelfServiceRequest.new({
  data: DatadogAPIClient::V2::UpdateAppSelfServiceRequestData.new({
    attributes: DatadogAPIClient::V2::UpdateAppSelfServiceRequestDataAttributes.new({
      self_service: true,
    }),
    type: DatadogAPIClient::V2::AppSelfServiceType::SELFSERVICE,
  }),
})
api_instance.update_app_self_service(APP_DATA_ID, body)
