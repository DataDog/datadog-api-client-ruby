=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for DatadogAPIClient::V1::LogsUserAgentParserType
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe DatadogAPIClient::V1::LogsUserAgentParserType do
  let(:instance) { DatadogAPIClient::V1::LogsUserAgentParserType.new }

  describe 'test an instance of LogsUserAgentParserType' do
    it 'should create an instance of LogsUserAgentParserType' do
      expect(instance).to be_instance_of(DatadogAPIClient::V1::LogsUserAgentParserType)
    end
  end
end
