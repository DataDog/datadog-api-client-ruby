require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::OrganizationsAPI.new
public_id = 'abc123' # String | The `public_id` of the organization you are operating with
idp_file = File.new('/path/to/some/file') # File | The path to the XML metadata file you wish to upload.

begin
  # Upload IdP metadata
  result = api_instance.upload_id_p_for_org(public_id, idp_file)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling OrganizationsAPI->upload_id_p_for_org: #{e}"
end
