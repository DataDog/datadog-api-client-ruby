# Upsert rows returns "Rows created or updated successfully" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ReferenceTablesAPI.new

body = DatadogAPIClient::V2::BatchUpsertRowsRequestArray.new({
  data: [
    DatadogAPIClient::V2::BatchUpsertRowsRequestData.new({
      attributes: DatadogAPIClient::V2::BatchUpsertRowsRequestDataAttributes.new({
        values: {},
      }),
      id: "primary_key_value",
      type: DatadogAPIClient::V2::TableRowResourceDataType::ROW,
    }),
  ],
})
p api_instance.upsert_rows("id", body)
