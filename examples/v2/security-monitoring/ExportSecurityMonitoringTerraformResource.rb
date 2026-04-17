# Export security monitoring resource to Terraform returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.export_security_monitoring_terraform_resource".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "suppression" in the system
SUPPRESSION_DATA_ID = ENV["SUPPRESSION_DATA_ID"]
p api_instance.export_security_monitoring_terraform_resource(SecurityMonitoringTerraformResourceType::SUPPRESSIONS, SUPPRESSION_DATA_ID)
