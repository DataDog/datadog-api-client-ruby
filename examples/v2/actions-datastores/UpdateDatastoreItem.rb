# Update datastore item returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionsDatastoresAPI.new

# there is a valid "datastore" in the system
DATASTORE_DATA_ID = ENV["DATASTORE_DATA_ID"]

body = DatadogAPIClient::V2::UpdateAppsDatastoreItemRequest.new({
  data: DatadogAPIClient::V2::UpdateAppsDatastoreItemRequestData.new({
    attributes: DatadogAPIClient::V2::UpdateAppsDatastoreItemRequestDataAttributes.new({
      item_changes: DatadogAPIClient::V2::UpdateAppsDatastoreItemRequestDataAttributesItemChanges.new({}),
      item_key: "test-key",
    }),
    type: DatadogAPIClient::V2::UpdateAppsDatastoreItemRequestDataType::ITEMS,
  }),
})
p api_instance.update_datastore_item(DATASTORE_DATA_ID, body)
