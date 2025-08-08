# Put datastore item returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionsDatastoresAPI.new

# there is a valid "datastore" in the system
DATASTORE_DATA_ATTRIBUTES_PRIMARY_COLUMN_NAME = ENV["DATASTORE_DATA_ATTRIBUTES_PRIMARY_COLUMN_NAME"]
DATASTORE_DATA_ID = ENV["DATASTORE_DATA_ID"]

body = DatadogAPIClient::V2::PutAppsDatastoreItemRequest.new({
  data: DatadogAPIClient::V2::PutAppsDatastoreItemRequestData.new({
    attributes: DatadogAPIClient::V2::PutAppsDatastoreItemRequestDataAttributes.new({
      value: {
        "28173b88-1a0e-001e-28c0-7664b6410518": "new-item-key", "data": "example data", "key": "value",
      },
    }),
    type: DatadogAPIClient::V2::PutAppsDatastoreItemRequestDataType::ITEMS,
    id: "e7e64418-b60c-4789-9612-895ac8423207",
  }),
})
p api_instance.put_datastore_item(DATASTORE_DATA_ID, body)
