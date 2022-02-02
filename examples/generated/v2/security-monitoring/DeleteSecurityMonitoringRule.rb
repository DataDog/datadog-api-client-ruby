require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
rule_id = 'rule_id_example' # String | The ID of the rule.

begin
  # Delete an existing rule
  api_instance.delete_security_monitoring_rule(rule_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling SecurityMonitoringAPI->delete_security_monitoring_rule: #{e}"
end
