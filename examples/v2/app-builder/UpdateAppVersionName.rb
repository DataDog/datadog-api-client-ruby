# Name App Version returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AppBuilderAPI.new

# there is a valid "app" in the system
APP_DATA_ID = ENV["APP_DATA_ID"]

body = DatadogAPIClient::V2::UpdateAppVersionNameRequest.new({
  data: DatadogAPIClient::V2::UpdateAppVersionNameRequestData.new({
    attributes: DatadogAPIClient::V2::UpdateAppVersionNameRequestDataAttributes.new({
      name: "v1.2.0 - bug fix release",
    }),
    type: DatadogAPIClient::V2::AppVersionNameType::VERSIONNAMES,
  }),
})
api_instance.update_app_version_name(APP_DATA_ID, "latest", body)
