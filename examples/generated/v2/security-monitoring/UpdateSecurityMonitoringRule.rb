require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
rule_id = 'rule_id_example' # String | The ID of the rule.
body = DatadogAPIClient::V2::SecurityMonitoringRuleUpdatePayload.new # SecurityMonitoringRuleUpdatePayload | 

begin
  # Update an existing rule
  result = api_instance.update_security_monitoring_rule(rule_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling SecurityMonitoringAPI->update_security_monitoring_rule: #{e}"
end
