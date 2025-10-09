# Create reference table returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ReferenceTablesAPI.new

body = DatadogAPIClient::V2::CreateTableRequest.new({
  data: DatadogAPIClient::V2::CreateTableRequestData.new({
    attributes: DatadogAPIClient::V2::CreateTableRequestDataAttributes.new({
      description: "this is a cloud table generated via a cloud bucket sync",
      file_metadata: DatadogAPIClient::V2::CreateTableRequestDataAttributesFileMetadataCloudStorage.new({
        access_details: DatadogAPIClient::V2::CreateTableRequestDataAttributesFileMetadataOneOfAccessDetails.new({
          aws_detail: DatadogAPIClient::V2::CreateTableRequestDataAttributesFileMetadataOneOfAccessDetailsAwsDetail.new({
            aws_account_id: "test-account-id",
            aws_bucket_name: "test-bucket",
            file_path: "test_rt.csv",
          }),
        }),
        sync_enabled: true,
      }),
      schema: DatadogAPIClient::V2::CreateTableRequestDataAttributesSchema.new({
        fields: [
          DatadogAPIClient::V2::CreateTableRequestDataAttributesSchemaFieldsItems.new({
            name: "name",
            type: DatadogAPIClient::V2::ReferenceTableSchemaFieldType::STRING,
          }),
          DatadogAPIClient::V2::CreateTableRequestDataAttributesSchemaFieldsItems.new({
            name: "account_id",
            type: DatadogAPIClient::V2::ReferenceTableSchemaFieldType::STRING,
          }),
        ],
        primary_keys: [
          "account_id",
        ],
      }),
      source: DatadogAPIClient::V2::ReferenceTableCreateSourceType::S3,
      table_name: "test_reference_table",
      tags: [
        "test_tag",
      ],
    }),
    type: DatadogAPIClient::V2::CreateTableRequestDataType::REFERENCE_TABLE,
  }),
})
p api_instance.create_reference_table(body)
