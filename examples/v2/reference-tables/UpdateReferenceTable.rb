# Update reference table returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ReferenceTablesAPI.new

body = DatadogAPIClient::V2::PatchTableRequest.new({
  data: DatadogAPIClient::V2::PatchTableRequestData.new({
    attributes: DatadogAPIClient::V2::PatchTableRequestDataAttributes.new({
      description: "this is a cloud table generated via a cloud bucket sync",
      file_metadata: DatadogAPIClient::V2::PatchTableRequestDataAttributesFileMetadataCloudStorage.new({
        access_details: DatadogAPIClient::V2::PatchTableRequestDataAttributesFileMetadataOneOfAccessDetails.new({
          aws_detail: DatadogAPIClient::V2::PatchTableRequestDataAttributesFileMetadataOneOfAccessDetailsAwsDetail.new({
            aws_account_id: "test-account-id",
            aws_bucket_name: "test-bucket",
            file_path: "test_rt.csv",
          }),
        }),
        sync_enabled: true,
      }),
      schema: DatadogAPIClient::V2::PatchTableRequestDataAttributesSchema.new({
        fields: [
          DatadogAPIClient::V2::PatchTableRequestDataAttributesSchemaFieldsItems.new({
            name: "id",
            type: DatadogAPIClient::V2::ReferenceTableSchemaFieldType::INT32,
          }),
          DatadogAPIClient::V2::PatchTableRequestDataAttributesSchemaFieldsItems.new({
            name: "name",
            type: DatadogAPIClient::V2::ReferenceTableSchemaFieldType::STRING,
          }),
        ],
        primary_keys: [
          "id",
        ],
      }),
      tags: [
        "test_tag",
      ],
    }),
    type: DatadogAPIClient::V2::PatchTableRequestDataType::REFERENCE_TABLE,
  }),
})
p api_instance.update_reference_table("id", body)
