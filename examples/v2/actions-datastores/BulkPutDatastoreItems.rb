# Bulk put datastore items returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionsDatastoresAPI.new

# there is a valid "datastore" in the system
DATASTORE_DATA_ATTRIBUTES_PRIMARY_COLUMN_NAME = ENV["DATASTORE_DATA_ATTRIBUTES_PRIMARY_COLUMN_NAME"]
DATASTORE_DATA_ID = ENV["DATASTORE_DATA_ID"]

body = DatadogAPIClient::V2::BulkPutAppsDatastoreItemsRequest.new({
  data: DatadogAPIClient::V2::BulkPutAppsDatastoreItemsRequestData.new({
    attributes: DatadogAPIClient::V2::BulkPutAppsDatastoreItemsRequestDataAttributes.new({
      values: [
        {
          "28173b88-1a0e-001e-28c0-7664b6410518": "key1", "value": "{'data': 'example data 1', 'key': 'value'}",
        },
        {
          "28173b88-1a0e-001e-28c0-7664b6410518": "key2", "value": "{'data': 'example data 2', 'key': 'value'}",
        },
      ],
    }),
    type: DatadogAPIClient::V2::BulkPutAppsDatastoreItemsRequestDataType::ITEMS,
  }),
})
p api_instance.bulk_put_datastore_items(DATASTORE_DATA_ID, body)
