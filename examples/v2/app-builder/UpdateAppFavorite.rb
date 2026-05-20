# Update App Favorite Status returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AppBuilderAPI.new

# there is a valid "app" in the system
APP_DATA_ID = ENV["APP_DATA_ID"]

body = DatadogAPIClient::V2::UpdateAppFavoriteRequest.new({
  data: DatadogAPIClient::V2::UpdateAppFavoriteRequestData.new({
    attributes: DatadogAPIClient::V2::UpdateAppFavoriteRequestDataAttributes.new({
      favorite: true,
    }),
    type: DatadogAPIClient::V2::AppFavoriteType::FAVORITES,
  }),
})
api_instance.update_app_favorite(APP_DATA_ID, body)
