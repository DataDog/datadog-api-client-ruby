# Fetch the result of a DDSQL query returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DDSQLAPI.new

body = DatadogAPIClient::V2::DdsqlTabularQueryFetchRequest.new({
  data: DatadogAPIClient::V2::DdsqlTabularQueryFetchRequestData.new({
    attributes: DatadogAPIClient::V2::DdsqlTabularQueryFetchRequestAttributes.new({
      query_id: "eyJxdWVyeSI6ICJTRUxFQ1QgKiBGUk9NIGxvZ3MifQ==",
    }),
    type: DatadogAPIClient::V2::DdsqlTabularQueryFetchRequestType::DDSQL_QUERY_FETCH_REQUEST,
  }),
})
p api_instance.fetch_ddsql_tabular_query(body)
