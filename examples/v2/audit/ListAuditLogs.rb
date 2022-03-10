# Get a list of Audit Logs events returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AuditAPI.new
p api_instance.list_audit_logs()
