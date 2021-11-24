# Query timeseries points returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MetricsAPI.new
p api_instance.query_metrics((Time.now + -1 * 86400).to_i, Time.now.to_i, "system.cpu.idle{*}")
