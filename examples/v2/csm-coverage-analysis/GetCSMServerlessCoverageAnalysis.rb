# Get the CSM Serverless Coverage Analysis returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CSMCoverageAnalysisAPI.new
p api_instance.get_csm_serverless_coverage_analysis()
