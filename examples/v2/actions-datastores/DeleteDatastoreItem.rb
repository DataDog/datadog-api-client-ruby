# Delete datastore item returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionsDatastoresAPI.new

# there is a valid "datastore" in the system
DATASTORE_DATA_ID = ENV["DATASTORE_DATA_ID"]

# there are valid "datastore items" in the system
DATASTORE_ITEMS_DATA_0_ID = ENV["DATASTORE_ITEMS_DATA_0_ID"]

body = DatadogAPIClient::V2::DeleteAppsDatastoreItemRequest.new({
  data: DatadogAPIClient::V2::DeleteAppsDatastoreItemRequestData.new({
    attributes: DatadogAPIClient::V2::DeleteAppsDatastoreItemRequestDataAttributes.new({
      id: DATASTORE_ITEMS_DATA_0_ID,
      item_key: "test-key",
    }),
    type: DatadogAPIClient::V2::DeleteAppsDatastoreItemRequestDataType::ITEMS,
    id: DATASTORE_DATA_ID,
  }),
})
p api_instance.delete_datastore_item(DATASTORE_DATA_ID, body)
