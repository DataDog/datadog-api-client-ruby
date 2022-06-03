# Delete an existing rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityPlatformAPI.new
api_instance.delete_security_monitoring_rule("rule_id")
