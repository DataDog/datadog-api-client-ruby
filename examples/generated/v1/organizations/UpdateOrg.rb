require "datadog_api_client"
api_instance = DatadogAPIClient::V1::OrganizationsAPI.new
public_id = "abc123" # String | The `public_id` of the organization you are operating within.
body = DatadogAPIClient::V1::Organization.new # Organization |

begin
  # Update your organization
  result = api_instance.update_org(public_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling OrganizationsAPI->update_org: #{e}"
end
