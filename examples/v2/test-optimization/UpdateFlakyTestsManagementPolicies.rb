# Update Flaky Tests Management policies returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_flaky_tests_management_policies".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TestOptimizationAPI.new

body = DatadogAPIClient::V2::TestOptimizationFlakyTestsManagementPoliciesUpdateRequest.new({
  data: DatadogAPIClient::V2::TestOptimizationFlakyTestsManagementPoliciesUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::TestOptimizationFlakyTestsManagementPoliciesUpdateRequestAttributes.new({
      attempt_to_fix: DatadogAPIClient::V2::TestOptimizationFlakyTestsManagementPoliciesAttemptToFix.new({
        retries: 3,
      }),
      disabled: DatadogAPIClient::V2::TestOptimizationFlakyTestsManagementPoliciesDisabled.new({
        auto_disable_rule: DatadogAPIClient::V2::TestOptimizationFlakyTestsManagementPoliciesAutoDisableRule.new({
          enabled: false,
          status: DatadogAPIClient::V2::TestOptimizationFlakyTestsManagementPoliciesDisabledStatus::ACTIVE,
          window_seconds: 3600,
        }),
        branch_rule: DatadogAPIClient::V2::TestOptimizationFlakyTestsManagementPoliciesBranchRule.new({
          branches: [
            "main",
          ],
          enabled: true,
          excluded_branches: [],
          excluded_test_services: [],
        }),
        enabled: false,
        failure_rate_rule: DatadogAPIClient::V2::TestOptimizationFlakyTestsManagementPoliciesDisabledFailureRateRule.new({
          branches: [],
          enabled: false,
          min_runs: 10,
          status: DatadogAPIClient::V2::TestOptimizationFlakyTestsManagementPoliciesDisabledStatus::ACTIVE,
          threshold: 0.5,
        }),
      }),
      quarantined: DatadogAPIClient::V2::TestOptimizationFlakyTestsManagementPoliciesQuarantined.new({
        auto_quarantine_rule: DatadogAPIClient::V2::TestOptimizationFlakyTestsManagementPoliciesAutoQuarantineRule.new({
          enabled: true,
          window_seconds: 3600,
        }),
        branch_rule: DatadogAPIClient::V2::TestOptimizationFlakyTestsManagementPoliciesBranchRule.new({
          branches: [
            "main",
          ],
          enabled: true,
          excluded_branches: [],
          excluded_test_services: [],
        }),
        enabled: true,
        failure_rate_rule: DatadogAPIClient::V2::TestOptimizationFlakyTestsManagementPoliciesQuarantinedFailureRateRule.new({
          branches: [
            "main",
          ],
          enabled: true,
          min_runs: 10,
          threshold: 0.5,
        }),
      }),
      repository_id: "github.com/datadog/shopist",
    }),
    type: DatadogAPIClient::V2::TestOptimizationUpdateFlakyTestsManagementPoliciesRequestDataType::TEST_OPTIMIZATION_UPDATE_FLAKY_TESTS_MANAGEMENT_POLICIES_REQUEST,
  }),
})
p api_instance.update_flaky_tests_management_policies(body)
