require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new
opts = {
  ids: 'id1, id2, id3', # String | A comma separated list of the IDs of the service level objectives objects.
  query: 'monitor', # String | The query string to filter results based on SLO names.
  tags_query: 'env:prod', # String | The query string to filter results based on a single SLO tag.
  metrics_query: 'aws.elb.request_count', # String | The query string to filter results based on SLO numerator and denominator.
  limit: 789, # Integer | The number of SLOs to return in the response.
  offset: 789 # Integer | The specific offset to use as the beginning of the returned response.
}

begin
  # Get all SLOs
  result = api_instance.list_slos(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->list_slos: #{e}"
end
