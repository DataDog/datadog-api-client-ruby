# Update an Elastic Cloud CCM account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_elastic_cloud_ccm_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ElasticCloudCloudCostManagementAPI.new

body = DatadogAPIClient::V2::ElasticCloudCcmAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::ElasticCloudCcmAccountUpdateData.new({
    attributes: DatadogAPIClient::V2::ElasticCloudCcmAccountUpdateAttributes.new({
      authentication: DatadogAPIClient::V2::ElasticCloudCcmTokenAuth.new({
        api_key: "your-billing-api-key",
        type: DatadogAPIClient::V2::ElasticCloudCcmTokenAuthType::BEARER_TOKEN,
      }),
      dataflows: [
        DatadogAPIClient::V2::ElasticCloudCcmDataflow.new({
          enabled: true,
          id: DatadogAPIClient::V2::ElasticCloudCcmDataflowId::COST_DATA,
        }),
      ],
      name: "elastic-cloud-ccm-prod",
      settings: DatadogAPIClient::V2::ElasticCloudCcmSettingsUpdate.new({
        elastic_org_id: "2079364244",
      }),
    }),
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.update_elastic_cloud_ccm_account("account_id", body)
