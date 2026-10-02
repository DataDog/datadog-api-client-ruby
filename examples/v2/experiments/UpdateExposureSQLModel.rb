# Update exposure SQL model returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

body = DatadogAPIClient::V2::ExperimentsCreateExposureSQLModelV2Request.new({
  data: DatadogAPIClient::V2::ExperimentsCreateExposureSQLModelV2RequestData.new({
    attributes: DatadogAPIClient::V2::ExperimentsUpdateExposureSQLModelV2RequestDataAttributes.new({
      date_partition_column: nil,
      experiment_column: "experiment_id",
      name: "Exposure events",
      properties: [
        DatadogAPIClient::V2::ExperimentsSQLModelPropertyInput.new({
          column_name: "country",
          column_type: DatadogAPIClient::V2::ExperimentsCreateExposureSQLModelV2RequestDataAttributesItemsColumnType::STRING,
          description: nil,
          name: "country",
        }),
      ],
      sql: "SELECT user_id, experiment_id, variant, exposed_at, country FROM analytics.exposures",
      subject_types: [
        DatadogAPIClient::V2::ExperimentsCreateExposureSQLModelV2RequestDataAttributesSubjectTypesItems.new({
          column_name: "user_id",
          subject_type_id: "550e8400-e29b-41d4-a716-446655440010",
        }),
      ],
      timestamp_column: "exposed_at",
      variant_column: "variant",
    }),
    type: DatadogAPIClient::V2::ExperimentsUpdateExposureSQLModelV2RequestDataType::EXPOSURE_SQL_MODELS,
  }),
})
p api_instance.update_exposure_sql_model("550e8400-e29b-41d4-a716-446655440000", body)
