# Create datastore from import returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionsDatastoresAPI.new

body = DatadogAPIClient::V2::CreateAppsDatastoreFromImportRequest.new({
  data: DatadogAPIClient::V2::CreateAppsDatastoreFromImportRequestData.new({
    attributes: DatadogAPIClient::V2::CreateAppsDatastoreFromImportRequestDataAttributes.new({
      name: "datastore-name",
      primary_column_name: "primaryKey",
      values: [
        {
          "primaryKey": "key1", "value": "{'data': 'example data 1', 'key': 'value'}",
        },
        {
          "primaryKey": "key2", "value": "{'data': 'example data 2', 'key': 'value'}",
        },
      ],
    }),
    type: DatadogAPIClient::V2::CreateAppsDatastoreFromImportRequestDataType::DATASTORES,
  }),
})
p api_instance.create_datastore_from_import(body)
