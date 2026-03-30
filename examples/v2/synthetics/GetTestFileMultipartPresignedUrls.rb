# Get presigned URLs for uploading a test file returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new

body = DatadogAPIClient::V2::SyntheticsTestFileMultipartPresignedUrlsRequest.new({
  bucket_key_prefix: DatadogAPIClient::V2::SyntheticsTestFileMultipartPresignedUrlsRequestBucketKeyPrefix::API_UPLOAD_FILE,
  parts: [
    DatadogAPIClient::V2::SyntheticsTestFileMultipartPresignedUrlsPart.new({
      md5: "1B2M2Y8AsgTpgAmY7PhCfg==",
      part_number: 1,
    }),
  ],
})
p api_instance.get_test_file_multipart_presigned_urls("abc-def-123", body)
