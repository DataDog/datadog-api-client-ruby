require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::OrganizationsAPI.new
body = DatadogAPIClient::V1::OrganizationCreateBody.new({name: 'New child org'}) # OrganizationCreateBody | Organization object that needs to be created

begin
  # Create a child organization
  result = api_instance.create_child_org(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling OrganizationsAPI->create_child_org: #{e}"
end
