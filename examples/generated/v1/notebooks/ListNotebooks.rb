require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::NotebooksAPI.new
opts = {
  author_handle: 'test@datadoghq.com', # String | Return notebooks created by the given `author_handle`.
  exclude_author_handle: 'test@datadoghq.com', # String | Return notebooks not created by the given `author_handle`.
  start: 0, # Integer | The index of the first notebook you want returned.
  count: 5, # Integer | The number of notebooks to be returned.
  sort_field: 'modified', # String | Sort by field `modified`, `name`, or `created`.
  sort_dir: 'desc', # String | Sort by direction `asc` or `desc`.
  query: 'postmortem', # String | Return only notebooks with `query` string in notebook name or author handle.
  include_cells: false, # Boolean | Value of `false` excludes the `cells` and global `time` for each notebook.
  is_template: false, # Boolean | True value returns only template notebooks. Default is false (returns only non-template notebooks).
  type: 'investigation' # String | If type is provided, returns only notebooks with that metadata type. Default does not have type filtering.
}

begin
  # Get all notebooks
  result = api_instance.list_notebooks(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling NotebooksAPI->list_notebooks: #{e}"
end
