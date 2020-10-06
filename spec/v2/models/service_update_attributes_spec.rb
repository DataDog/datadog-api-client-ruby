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

# Unit tests for DatadogAPIClient::V2::ServiceUpdateAttributes
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ServiceUpdateAttributes' do
  before do
    # run before each test
    @instance = DatadogAPIClient::V2::ServiceUpdateAttributes.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ServiceUpdateAttributes' do
    it 'should create an instance of ServiceUpdateAttributes' do
      expect(@instance).to be_instance_of(DatadogAPIClient::V2::ServiceUpdateAttributes)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
