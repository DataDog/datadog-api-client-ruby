# Update metric SQL model returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

body = DatadogAPIClient::V2::ExperimentsCreateMetricSQLModelV2Request.new({
  data: DatadogAPIClient::V2::ExperimentsCreateMetricSQLModelV2RequestData.new({
    attributes: DatadogAPIClient::V2::ExperimentsUpdateMetricSQLModelV2RequestDataAttributes.new({
      date_partition_column: nil,
      description: nil,
      measures: [
        DatadogAPIClient::V2::ExperimentsCreateMetricSQLModelV2RequestDataAttributesMeasuresItems.new({
          column_name: "revenue",
          column_type: DatadogAPIClient::V2::ExperimentsCreateExposureSQLModelV2RequestDataAttributesItemsColumnType::FLOAT,
          description: nil,
          name: nil,
        }),
      ],
      name: "Order facts",
      properties: [
        DatadogAPIClient::V2::ExperimentsMetricSQLModelPropertyInput.new({
          column_name: "item_type",
          column_type: DatadogAPIClient::V2::ExperimentsCreateExposureSQLModelV2RequestDataAttributesItemsColumnType::STRING,
          description: nil,
          name: "item_type",
        }),
      ],
      sql: "SELECT user_id, order_id, item_type, revenue, created_at FROM analytics.orders",
      subject_types: [
        DatadogAPIClient::V2::ExperimentsCreateExposureSQLModelV2RequestDataAttributesSubjectTypesItems.new({
          column_name: "user_id",
          subject_type_id: "550e8400-e29b-41d4-a716-446655440010",
        }),
      ],
      timestamp_column: "created_at",
    }),
    type: DatadogAPIClient::V2::ExperimentsUpdateMetricSQLModelV2RequestDataType::METRIC_SQL_MODELS,
  }),
})
p api_instance.update_metric_sql_model("550e8400-e29b-41d4-a716-446655440000", body)
