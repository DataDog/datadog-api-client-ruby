# Abort a multipart upload of a test file returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new

body = DatadogAPIClient::V2::SyntheticsTestFileAbortMultipartUploadRequest.new({
  key: "org-123/api-upload-file/abc-def-123/2024-01-01T00:00:00_uuid.json",
  upload_id: "upload-id-abc123",
})
api_instance.abort_test_file_multipart_upload("abc-def-123", body)
