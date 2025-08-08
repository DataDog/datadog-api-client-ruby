# Create datastore returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionsDatastoresAPI.new

body = DatadogAPIClient::V2::CreateAppsDatastoreRequest.new({
  data: DatadogAPIClient::V2::CreateAppsDatastoreRequestData.new({
    attributes: DatadogAPIClient::V2::CreateAppsDatastoreRequestDataAttributes.new({
      name: "datastore-name",
      primary_column_name: "primaryKey",
    }),
    type: DatadogAPIClient::V2::CreateAppsDatastoreRequestDataType::DATASTORES,
  }),
})
p api_instance.create_datastore(body)
