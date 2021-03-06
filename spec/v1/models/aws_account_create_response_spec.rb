=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for DatadogAPIClient::V1::AWSAccountCreateResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe DatadogAPIClient::V1::AWSAccountCreateResponse do
  let(:instance) { DatadogAPIClient::V1::AWSAccountCreateResponse.new }

  describe 'test an instance of AWSAccountCreateResponse' do
    it 'should create an instance of AWSAccountCreateResponse' do
      expect(instance).to be_instance_of(DatadogAPIClient::V1::AWSAccountCreateResponse)
    end
  end
  describe 'test attribute "external_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
