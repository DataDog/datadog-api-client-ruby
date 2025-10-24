# Update AWS scan options returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AgentlessScanningAPI.new

body = DatadogAPIClient::V2::AwsScanOptionsUpdateRequest.new({
  data: DatadogAPIClient::V2::AwsScanOptionsUpdateData.new({
    type: DatadogAPIClient::V2::AwsScanOptionsType::AWS_SCAN_OPTIONS,
    id: "000000000002",
    attributes: DatadogAPIClient::V2::AwsScanOptionsUpdateAttributes.new({
      vuln_host_os: true,
      vuln_containers_os: true,
      lambda: false,
    }),
  }),
})
api_instance.update_aws_scan_options("000000000002", body)
