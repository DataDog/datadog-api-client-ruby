# Update a RUM application returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMAPI.new

# there is a valid "rum_application" in the system
RUM_APPLICATION_DATA_ID = ENV["RUM_APPLICATION_DATA_ID"]

body = DatadogAPIClient::V2::RUMApplicationUpdateRequest.new({
  data: DatadogAPIClient::V2::RUMApplicationUpdate.new({
    attributes: DatadogAPIClient::V2::RUMApplicationUpdateAttributes.new({
      name: "updated_name_for_my_existing_rum_application",
      type: "browser",
    }),
    id: RUM_APPLICATION_DATA_ID,
    type: DatadogAPIClient::V2::RUMApplicationUpdateType::RUM_APPLICATION_UPDATE,
  }),
})
p api_instance.update_rum_application(RUM_APPLICATION_DATA_ID, body)
