# Delete rows returns "Rows deleted successfully" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ReferenceTablesAPI.new

body = DatadogAPIClient::V2::BatchDeleteRowsRequestArray.new({
  data: [
    DatadogAPIClient::V2::BatchDeleteRowsRequestData.new({
      id: "primary_key_value",
      type: DatadogAPIClient::V2::TableRowResourceDataType::ROW,
    }),
  ],
})
p api_instance.delete_rows("id", body)
