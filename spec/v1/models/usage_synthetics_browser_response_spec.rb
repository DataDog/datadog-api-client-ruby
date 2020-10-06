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

# Unit tests for DatadogAPIClient::V1::UsageSyntheticsBrowserResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UsageSyntheticsBrowserResponse' do
  before do
    # run before each test
    @instance = DatadogAPIClient::V1::UsageSyntheticsBrowserResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsageSyntheticsBrowserResponse' do
    it 'should create an instance of UsageSyntheticsBrowserResponse' do
      expect(@instance).to be_instance_of(DatadogAPIClient::V1::UsageSyntheticsBrowserResponse)
    end
  end
  describe 'test attribute "usage"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
