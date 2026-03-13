# Batch rows query returns "Successfully retrieved rows. Some or all requested rows were found. Response includes found
# rows in the included section." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ReferenceTablesAPI.new

body = DatadogAPIClient::V2::BatchRowsQueryRequest.new({
  data: DatadogAPIClient::V2::BatchRowsQueryRequestData.new({
    attributes: DatadogAPIClient::V2::BatchRowsQueryRequestDataAttributes.new({
      row_ids: [
        "row_id_1",
        "row_id_2",
      ],
      table_id: "00000000-0000-0000-0000-000000000000",
    }),
    type: DatadogAPIClient::V2::BatchRowsQueryDataType::REFERENCE_TABLES_BATCH_ROWS_QUERY,
  }),
})
p api_instance.batch_rows_query(body)
