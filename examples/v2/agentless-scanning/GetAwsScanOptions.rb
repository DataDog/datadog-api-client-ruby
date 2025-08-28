# Get AWS scan options returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AgentlessScanningAPI.new

# there is a valid "aws_scan_options" in the system
AWS_SCAN_OPTIONS_ID = ENV["AWS_SCAN_OPTIONS_ID"]
p api_instance.get_aws_scan_options(AWS_SCAN_OPTIONS_ID)
