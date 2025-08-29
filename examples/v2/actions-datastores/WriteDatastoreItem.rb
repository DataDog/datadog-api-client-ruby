# Write datastore item returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionsDatastoresAPI.new

# there is a valid "datastore" in the system
DATASTORE_DATA_ID = ENV["DATASTORE_DATA_ID"]

body = DatadogAPIClient::V2::PutAppsDatastoreItemRequest.new({
  data: DatadogAPIClient::V2::PutAppsDatastoreItemRequestData.new({
    attributes: DatadogAPIClient::V2::PutAppsDatastoreItemRequestDataAttributes.new({
      value: {
        "id": "new-item-key", "data": "example data", "key": "value",
      },
    }),
    type: DatadogAPIClient::V2::DatastoreItemsDataType::ITEMS,
    id: "e7e64418-b60c-4789-9612-895ac8423207",
  }),
})
p api_instance.write_datastore_item(DATASTORE_DATA_ID, body)
