# Update a RUM application returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMAPI.new

body = DatadogAPIClient::V2::RUMApplicationUpdateRequest.new({
  data: DatadogAPIClient::V2::RUMApplicationUpdate.new({
    attributes: DatadogAPIClient::V2::RUMApplicationUpdateAttributes.new({
      name: "updated_name_for_my_existing_rum_application",
      type: "browser",
    }),
    id: "abcd1234-0000-0000-abcd-1234abcd5678",
    type: DatadogAPIClient::V2::RUMApplicationUpdateType::RUM_APPLICATION_UPDATE,
  }),
})
p api_instance.update_rum_application("id", body)
