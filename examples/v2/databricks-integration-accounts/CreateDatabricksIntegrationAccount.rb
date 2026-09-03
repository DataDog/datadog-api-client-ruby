# Create a Databricks integration account returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_databricks_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DatabricksIntegrationAccountsAPI.new

body = DatadogAPIClient::V2::DatabricksIntegrationAccountCreateRequest.new({
  data: DatadogAPIClient::V2::DatabricksIntegrationAccountCreateData.new({
    attributes: DatadogAPIClient::V2::DatabricksIntegrationAccountCreateAttributes.new({
      authentication: DatadogAPIClient::V2::DatabricksIntegrationAccountOAuthAuthRequest.new({
        auth_type: DatadogAPIClient::V2::DatabricksIntegrationAccountOAuthAuthType::DATABRICKS_OAUTH,
        azure_tenant_id: "4d3bac44-0230-4732-9e70-cc00736f0a97",
        client_id: "5c10654a-b3a3-4840-b37f-f477590c70a0",
        client_secret: "your-client-secret",
      }),
      dataflows: DatadogAPIClient::V2::DatabricksIntegrationDataflowsRequest.new({
        databricks_cloud_cost_metrics: DatadogAPIClient::V2::DatabricksCloudCostMetricsIntegrationDataflowRequest.new({
          enabled: true,
          settings: DatadogAPIClient::V2::DatabricksCloudCostMetricsIntegrationDataflowSettingsRequest.new({
            ccm_collect_all_workspaces: true,
          }),
        }),
        databricks_data_job_monitoring: DatadogAPIClient::V2::DatabricksDataJobMonitoringIntegrationDataflowRequest.new({
          enabled: true,
          settings: DatadogAPIClient::V2::DatabricksDataJobMonitoringIntegrationDataflowSettingsRequest.new({
            dd_api_key_id: "fe383f4e-09fc-46bf-8e10-4efdd453a646",
            dd_api_key_secret: "your-datadog-api-key",
            djm_global_init_script_enabled: true,
            script_gpum_enabled: true,
            script_logs_enabled: true,
          }),
        }),
        databricks_data_observability: DatadogAPIClient::V2::DatabricksDataObservabilityIntegrationDataflowRequest.new({
          enabled: true,
          settings: DatadogAPIClient::V2::DatabricksDataObservabilityIntegrationDataflowSettingsRequest.new({
            do_crawlers_cron: "0 * * * *",
            sync_system_catalog: true,
          }),
        }),
        databricks_model_serving_metrics: DatadogAPIClient::V2::DatabricksModelServingMetricsIntegrationDataflowRequest.new({
          enabled: true,
        }),
        databricks_serverless_jobs: DatadogAPIClient::V2::DatabricksServerlessJobsIntegrationDataflowRequest.new({
          enabled: true,
        }),
      }),
      name: "My Databricks Workspace",
      settings: DatadogAPIClient::V2::DatabricksIntegrationAccountSettingsRequest.new({
        system_tables_sql_warehouse_id: "aba7c023d4172910",
        workspace_url: "https://dbc-1234abcd.cloud.databricks.com",
      }),
    }),
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.create_databricks_integration_account(body)
