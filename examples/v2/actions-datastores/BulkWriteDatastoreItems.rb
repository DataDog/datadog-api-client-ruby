# Bulk write datastore items returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionsDatastoresAPI.new

# there is a valid "datastore" in the system
DATASTORE_DATA_ID = ENV["DATASTORE_DATA_ID"]

body = DatadogAPIClient::V2::BulkPutAppsDatastoreItemsRequest.new({
  data: DatadogAPIClient::V2::BulkPutAppsDatastoreItemsRequestData.new({
    attributes: DatadogAPIClient::V2::BulkPutAppsDatastoreItemsRequestDataAttributes.new({
      values: [
        {
          "id": "cust_3141", "name": "Johnathan",
        },
        {
          "id": "cust_3142", "name": "Mary",
        },
      ],
    }),
    type: DatadogAPIClient::V2::DatastoreItemsDataType::ITEMS,
  }),
})
p api_instance.bulk_write_datastore_items(DATASTORE_DATA_ID, body)
