# Post AWS Scan Options returns "Agentless scan options enabled successfully." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AgentlessScanningAPI.new

body = DatadogAPIClient::V2::AwsScanOptionsCreateRequest.new({
  data: DatadogAPIClient::V2::AwsScanOptionsCreateData.new({
    id: "000000000003",
    type: DatadogAPIClient::V2::AwsScanOptionsType::AWS_SCAN_OPTIONS,
    attributes: DatadogAPIClient::V2::AwsScanOptionsCreateAttributes.new({
      lambda: true,
      sensitive_data: false,
      vuln_containers_os: true,
      vuln_host_os: true,
    }),
  }),
})
p api_instance.create_aws_scan_options(body)
