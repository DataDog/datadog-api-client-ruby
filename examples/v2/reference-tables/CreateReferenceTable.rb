# Create reference table returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ReferenceTablesAPI.new

body = DatadogAPIClient::V2::CreateTableRequest.new({
  data: DatadogAPIClient::V2::CreateTableRequestData.new({
    attributes: DatadogAPIClient::V2::CreateTableRequestDataAttributes.new({
      file_metadata: DatadogAPIClient::V2::CreateTableRequestDataAttributesFileMetadataCloudStorage.new({
        access_details: DatadogAPIClient::V2::CreateTableRequestDataAttributesFileMetadataOneOfAccessDetails.new({
          aws_detail: DatadogAPIClient::V2::CreateTableRequestDataAttributesFileMetadataOneOfAccessDetailsAwsDetail.new({
            aws_account_id: "123456789000",
            aws_bucket_name: "example-data-bucket",
            file_path: "reference-tables/users.csv",
          }),
          azure_detail: DatadogAPIClient::V2::CreateTableRequestDataAttributesFileMetadataOneOfAccessDetailsAzureDetail.new({
            azure_client_id: "aaaaaaaa-1111-2222-3333-bbbbbbbbbbbb",
            azure_container_name: "reference-data",
            azure_storage_account_name: "examplestorageaccount",
            azure_tenant_id: "cccccccc-4444-5555-6666-dddddddddddd",
            file_path: "tables/users.csv",
          }),
          gcp_detail: DatadogAPIClient::V2::CreateTableRequestDataAttributesFileMetadataOneOfAccessDetailsGcpDetail.new({
            file_path: "data/reference_tables/users.csv",
            gcp_bucket_name: "example-data-bucket",
            gcp_project_id: "example-gcp-project-12345",
            gcp_service_account_email: "example-service@example-gcp-project-12345.iam.gserviceaccount.com",
          }),
        }),
        sync_enabled: false,
      }),
      schema: DatadogAPIClient::V2::CreateTableRequestDataAttributesSchema.new({
        fields: [
          DatadogAPIClient::V2::CreateTableRequestDataAttributesSchemaFieldsItems.new({
            name: "field_1",
            type: DatadogAPIClient::V2::ReferenceTableSchemaFieldType::STRING,
          }),
        ],
        primary_keys: [
          "field_1",
        ],
      }),
      source: DatadogAPIClient::V2::ReferenceTableCreateSourceType::LOCAL_FILE,
      table_name: "table_1",
      tags: [
        "tag_1",
        "tag_2",
      ],
    }),
    type: DatadogAPIClient::V2::CreateTableRequestDataType::REFERENCE_TABLE,
  }),
})
p api_instance.create_reference_table(body)
