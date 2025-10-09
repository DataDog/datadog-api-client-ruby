# Create reference table with upload returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ReferenceTablesAPI.new

body = DatadogAPIClient::V2::CreateTableRequest.new({
  data: DatadogAPIClient::V2::CreateTableRequestData.new({
    attributes: DatadogAPIClient::V2::CreateTableRequestDataAttributes.new({
      description: "Test reference table created via BDD test Example-Reference-Table",
      source: DatadogAPIClient::V2::ReferenceTableCreateSourceType::LOCAL_FILE,
      file_metadata: DatadogAPIClient::V2::CreateTableRequestDataAttributesFileMetadataLocalFile.new({
        upload_id: "test-upload-id-Example-Reference-Table",
      }),
      schema: DatadogAPIClient::V2::CreateTableRequestDataAttributesSchema.new({
        fields: [
          DatadogAPIClient::V2::CreateTableRequestDataAttributesSchemaFieldsItems.new({
            name: "id",
            type: DatadogAPIClient::V2::ReferenceTableSchemaFieldType::STRING,
          }),
          DatadogAPIClient::V2::CreateTableRequestDataAttributesSchemaFieldsItems.new({
            name: "name",
            type: DatadogAPIClient::V2::ReferenceTableSchemaFieldType::STRING,
          }),
          DatadogAPIClient::V2::CreateTableRequestDataAttributesSchemaFieldsItems.new({
            name: "value",
            type: DatadogAPIClient::V2::ReferenceTableSchemaFieldType::INT32,
          }),
        ],
        primary_keys: [
          "id",
        ],
      }),
      table_name: "test_reference_table_Example-Reference-Table",
      tags: [
        "test_tag",
      ],
    }),
    type: DatadogAPIClient::V2::CreateTableRequestDataType::REFERENCE_TABLE,
  }),
})
p api_instance.create_reference_table(body)
