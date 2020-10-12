=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for DatadogAPIClient::V2::LogsGroupByMissing
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LogsGroupByMissing' do
  let(:klass) { DatadogAPIClient::V2::LogsGroupByMissing }

  describe '.openapi_one_of' do
    it 'lists the models referenced in the oneOf array' do
      expect(klass.openapi_one_of).to_not be_empty
      klass.openapi_one_of.each { |_class| expect { DatadogAPIClient::V2.const_get(_class) }.to_not raise_error }
    end
  end

  describe '.build_from_hash' do
    it 'returns the correct model' do
    end
  end
  let(:klass) { DatadogAPIClient::V2::LogsGroupByMissing }

  describe '.openapi_one_of' do
    it 'lists the models referenced in the oneOf array' do
      expect(klass.openapi_one_of).to_not be_empty
      klass.openapi_one_of.each { |_class| expect { DatadogAPIClient::V2.const_get(_class) }.to_not raise_error }
    end
  end

  describe '.build_from_hash' do
    it 'returns the correct model' do
    end
  end
end
