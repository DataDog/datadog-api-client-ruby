require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::OrganizationsAPI.new
public_id = 'abc123' # String | The `public_id` of the organization you are operating within.

begin
  # Get organization information
  result = api_instance.get_org(public_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling OrganizationsAPI->get_org: #{e}"
end
