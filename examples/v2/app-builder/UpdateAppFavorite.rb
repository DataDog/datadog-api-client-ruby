# Update App Favorite Status returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AppBuilderAPI.new

body = DatadogAPIClient::V2::UpdateAppFavoriteRequest.new({
  data: DatadogAPIClient::V2::UpdateAppFavoriteRequestData.new({
    attributes: DatadogAPIClient::V2::UpdateAppFavoriteRequestDataAttributes.new({
      favorite: true,
    }),
    type: DatadogAPIClient::V2::AppFavoriteType::FAVORITES,
  }),
})
p api_instance.update_app_favorite("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
