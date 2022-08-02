require 'datadog_api_client/models'
require_relative 'datadog_api_client/inflector'

loader = Zeitwerk::Loader.new
loader.tag = File.basename(__FILE__, ".rb")
loader.collapse("#{__dir__}/datadog_api_client/*/models/")
loader.collapse("#{__dir__}/datadog_api_client/*/api/")
loader.push_dir("#{__dir__}/datadog_api_client/v1", namespace: DatadogAPIClient::V1)
loader.push_dir("#{__dir__}/datadog_api_client/v2", namespace: DatadogAPIClient::V2)
loader.inflector = DatadogAPIClient::DatadogAPIClientInflector.new
loader.setup
