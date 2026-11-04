# Get commitments list returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_commitments_commitment_list".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
opts = {
  commitment_type: CommitmentsCommitmentType::RESERVED_INSTANCES,
}
p api_instance.get_commitments_commitment_list(CommitmentsProvider::AWS, "ec2", 1788220800000, 1790812799000, opts)
