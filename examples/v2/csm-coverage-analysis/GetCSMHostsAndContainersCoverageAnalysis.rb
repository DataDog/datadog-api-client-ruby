# Get the CSM Hosts and Containers Coverage Analysis returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CSMCoverageAnalysisAPI.new
p api_instance.get_csm_hosts_and_containers_coverage_analysis()
