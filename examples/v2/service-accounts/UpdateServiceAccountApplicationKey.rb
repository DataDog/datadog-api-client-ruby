# Edit an application key for this service account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new

# there is a valid "service_account_user" in the system
SERVICE_ACCOUNT_USER_DATA_ID = ENV["SERVICE_ACCOUNT_USER_DATA_ID"]

# there is a valid "service_account_application_key" for "service_account_user"
SERVICE_ACCOUNT_APPLICATION_KEY_DATA_ATTRIBUTES_NAME = ENV["SERVICE_ACCOUNT_APPLICATION_KEY_DATA_ATTRIBUTES_NAME"]
SERVICE_ACCOUNT_APPLICATION_KEY_DATA_ID = ENV["SERVICE_ACCOUNT_APPLICATION_KEY_DATA_ID"]

body = DatadogAPIClient::V2::ApplicationKeyUpdateRequest.new({
  data: DatadogAPIClient::V2::ApplicationKeyUpdateData.new({
    id: SERVICE_ACCOUNT_APPLICATION_KEY_DATA_ID,
    type: DatadogAPIClient::V2::ApplicationKeysType::APPLICATION_KEYS,
    attributes: DatadogAPIClient::V2::ApplicationKeyUpdateAttributes.new({
      name: "Application Key for managing dashboards-updated",
    }),
  }),
})
p api_instance.update_service_account_application_key(SERVICE_ACCOUNT_USER_DATA_ID, SERVICE_ACCOUNT_APPLICATION_KEY_DATA_ID, body)
