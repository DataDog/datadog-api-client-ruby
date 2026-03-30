# Complete a multipart upload of a test file returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new

body = DatadogAPIClient::V2::SyntheticsTestFileCompleteMultipartUploadRequest.new({
  key: "org-123/api-upload-file/abc-def-123/2024-01-01T00:00:00_uuid.json",
  parts: [
    DatadogAPIClient::V2::SyntheticsTestFileCompleteMultipartUploadPart.new({
      e_tag: '"d41d8cd98f00b204e9800998ecf8427e"',
      part_number: 1,
    }),
  ],
  upload_id: "upload-id-abc123",
})
api_instance.complete_test_file_multipart_upload("abc-def-123", body)
