# Create reference table upload returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ReferenceTablesAPI.new

body = DatadogAPIClient::V2::CreateUploadRequest.new({
  data: DatadogAPIClient::V2::CreateUploadRequestData.new({
    attributes: DatadogAPIClient::V2::CreateUploadRequestDataAttributes.new({
      headers: [
        "id",
        "name",
        "value",
      ],
      table_name: "test_upload_table_Example-Reference-Table",
      part_count: 1,
      part_size: 1024,
    }),
    type: DatadogAPIClient::V2::CreateUploadRequestDataType::UPLOAD,
  }),
})
p api_instance.create_reference_table_upload(body)
