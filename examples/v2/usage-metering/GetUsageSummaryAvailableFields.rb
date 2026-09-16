# Get available fields for usage summary returns "OK" response

require "datadog_api_client"

api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
resp = api_instance.get_usage_summary_available_fields
attrs = resp.data.attributes

puts "response_fields (#{attrs.response_fields.length}):"
attrs.response_fields.each { |f| puts "  #{f}" }

puts "date_fields (#{attrs.date_fields.length}):"
attrs.date_fields.each { |f| puts "  #{f}" }

puts "date_org_fields (#{attrs.date_org_fields.length}):"
attrs.date_org_fields.each { |f| puts "  #{f}" }
