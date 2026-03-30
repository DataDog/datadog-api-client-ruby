# Get a presigned URL for downloading a test file returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new

body = DatadogAPIClient::V2::SyntheticsTestFileDownloadRequest.new({
  bucket_key: "api-upload-file/abc-def-123/2024-01-01T00:00:00_uuid.json",
})
p api_instance.get_test_file_download_url("abc-def-123", body)
