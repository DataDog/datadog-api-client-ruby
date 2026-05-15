# Name App Version returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AppBuilderAPI.new

body = DatadogAPIClient::V2::UpdateAppVersionNameRequest.new({
  data: DatadogAPIClient::V2::UpdateAppVersionNameRequestData.new({
    attributes: DatadogAPIClient::V2::UpdateAppVersionNameRequestDataAttributes.new({
      name: "v1.2.0 - bug fix release",
    }),
    type: DatadogAPIClient::V2::AppVersionNameType::VERSIONNAMES,
  }),
})
api_instance.update_app_version_name("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", "version", body)
