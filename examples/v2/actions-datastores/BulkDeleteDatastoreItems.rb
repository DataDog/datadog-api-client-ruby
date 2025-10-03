# Bulk delete datastore items returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionsDatastoresAPI.new

# there is a valid "datastore" in the system
DATASTORE_DATA_ID = ENV["DATASTORE_DATA_ID"]

body = DatadogAPIClient::V2::BulkDeleteAppsDatastoreItemsRequest.new({
  data: DatadogAPIClient::V2::BulkDeleteAppsDatastoreItemsRequestData.new({
    attributes: DatadogAPIClient::V2::BulkDeleteAppsDatastoreItemsRequestDataAttributes.new({
      item_keys: [
        "test-key",
      ],
    }),
    type: DatadogAPIClient::V2::BulkDeleteAppsDatastoreItemsRequestDataType::ITEMS,
  }),
})
p api_instance.bulk_delete_datastore_items(DATASTORE_DATA_ID, body)
