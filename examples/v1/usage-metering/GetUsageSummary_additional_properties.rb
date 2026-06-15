# Get usage across your account and read all fields from additionalProperties returns "OK" response

require "datadog_api_client"

# Step 1: fetch every field name at each response level.
fields_api = DatadogAPIClient::V2::UsageMeteringAPI.new
fields_resp = fields_api.get_usage_summary_available_fields
attrs = fields_resp.data.attributes
response_fields  = attrs.response_fields  || []
date_fields      = attrs.date_fields      || []
date_org_fields  = attrs.date_org_fields  || []

# Step 2: call get_usage_summary with org details included.
usage_api = DatadogAPIClient::V1::UsageMeteringAPI.new
resp = usage_api.get_usage_summary(
  "2021-11-11T11:11:11.111+00:00",
  include_org_details: true
)

# Layer 1 — top-level additionalProperties on the response object.
response_fields.each do |field|
  key = field.to_sym
  value = resp.additional_properties[key]
  puts "response.#{field}: #{value}" unless value.nil?
end

# Layer 2 — per-date additionalProperties.
(resp.usage || []).each do |date_entry|
  date_fields.each do |field|
    key = field.to_sym
    value = date_entry.additional_properties[key]
    puts "date(#{date_entry.date}).#{field}: #{value}" unless value.nil?
  end

  # Layer 3 — per-org additionalProperties inside each date.
  (date_entry.orgs || []).each do |org|
    date_org_fields.each do |field|
      key = field.to_sym
      value = org.additional_properties[key]
      puts "date(#{date_entry.date}).org(#{org.name}).#{field}: #{value}" unless value.nil?
    end
  end
end
