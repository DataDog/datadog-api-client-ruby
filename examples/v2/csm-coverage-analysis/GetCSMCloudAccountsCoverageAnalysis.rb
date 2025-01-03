# Get the CSM Cloud Accounts Coverage Analysis returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CSMCoverageAnalysisAPI.new
p api_instance.get_csm_cloud_accounts_coverage_analysis()
