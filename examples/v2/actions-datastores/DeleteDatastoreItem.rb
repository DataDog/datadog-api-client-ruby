# Delete datastore item returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionsDatastoresAPI.new

# there is a valid "datastore" in the system
DATASTORE_DATA_ID = ENV["DATASTORE_DATA_ID"]

body = DatadogAPIClient::V2::DeleteAppsDatastoreItemRequest.new({
  data: DatadogAPIClient::V2::DeleteAppsDatastoreItemRequestData.new({
    attributes: DatadogAPIClient::V2::DeleteAppsDatastoreItemRequestDataAttributes.new({
      item_key: "test-key",
    }),
    type: DatadogAPIClient::V2::DatastoreItemsDataType::ITEMS,
  }),
})
p api_instance.delete_datastore_item(DATASTORE_DATA_ID, body)
