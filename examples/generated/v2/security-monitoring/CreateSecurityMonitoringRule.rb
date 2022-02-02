require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
body = DatadogAPIClient::V2::SecurityMonitoringRuleCreatePayload.new({cases: [DatadogAPIClient::V2::SecurityMonitoringRuleCaseCreate.new({status: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::INFO})], is_enabled: true, message: 'message_example', name: 'My security monitoring rule.', options: DatadogAPIClient::V2::SecurityMonitoringRuleOptions.new, queries: [DatadogAPIClient::V2::SecurityMonitoringRuleQueryCreate.new({query: 'a > 3'})]}) # SecurityMonitoringRuleCreatePayload | 

begin
  # Create a detection rule
  result = api_instance.create_security_monitoring_rule(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling SecurityMonitoringAPI->create_security_monitoring_rule: #{e}"
end
