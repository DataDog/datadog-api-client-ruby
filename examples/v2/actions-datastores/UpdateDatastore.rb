# Update datastore returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionsDatastoresAPI.new

# there is a valid "datastore" in the system
DATASTORE_DATA_ID = ENV["DATASTORE_DATA_ID"]

body = DatadogAPIClient::V2::UpdateAppsDatastoreRequest.new({
  data: DatadogAPIClient::V2::UpdateAppsDatastoreRequestData.new({
    attributes: DatadogAPIClient::V2::UpdateAppsDatastoreRequestDataAttributes.new({
      name: "updated name",
    }),
    type: DatadogAPIClient::V2::DatastoreDataType::DATASTORES,
    id: DATASTORE_DATA_ID,
  }),
})
p api_instance.update_datastore(DATASTORE_DATA_ID, body)
