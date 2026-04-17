# Convert security monitoring resource to Terraform returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.convert_security_monitoring_terraform_resource".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringTerraformConvertRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringTerraformConvertData.new({
    type: "convert_resource",
    id: "abc-123",
    attributes: DatadogAPIClient::V2::SecurityMonitoringTerraformConvertAttributes.new({
      resource_json: {
        "enabled": "True", "name": "Example-Security-Monitoring", "rule_query": "source:cloudtrail", "suppression_query": "env:test",
      },
    }),
  }),
})
p api_instance.convert_security_monitoring_terraform_resource(SecurityMonitoringTerraformResourceType::SUPPRESSIONS, body)
