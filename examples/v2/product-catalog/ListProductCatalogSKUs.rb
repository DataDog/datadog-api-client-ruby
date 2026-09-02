# List SKUs returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_product_catalog_sk_us".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ProductCatalogAPI.new
p api_instance.list_product_catalog_sk_us(ProductCatalogSKUsAPIVersion::V1)
