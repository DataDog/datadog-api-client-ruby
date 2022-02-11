require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
rule_id = "rule_id_example" # String | The ID of the rule.

begin
  # Get a rule's details
  result = api_instance.get_security_monitoring_rule(rule_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling SecurityMonitoringAPI->get_security_monitoring_rule: #{e}"
end
