# Edit an application key returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new

# there is a valid "application_key" in the system
APPLICATION_KEY_DATA_ATTRIBUTES_NAME = ENV["APPLICATION_KEY_DATA_ATTRIBUTES_NAME"]
APPLICATION_KEY_DATA_ID = ENV["APPLICATION_KEY_DATA_ID"]

body = DatadogAPIClient::V2::ApplicationKeyUpdateRequest.new({
  data: DatadogAPIClient::V2::ApplicationKeyUpdateData.new({
    id: APPLICATION_KEY_DATA_ID,
    type: DatadogAPIClient::V2::ApplicationKeysType::APPLICATION_KEYS,
    attributes: DatadogAPIClient::V2::ApplicationKeyUpdateAttributes.new({
      name: "Application Key for managing dashboards-updated",
    }),
  }),
})
p api_instance.update_application_key(APPLICATION_KEY_DATA_ID, body)
