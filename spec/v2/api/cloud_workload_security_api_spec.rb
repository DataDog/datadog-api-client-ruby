=begin
#Datadog API V2 Collection

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

# Unit tests for DatadogAPIClient::V2::CloudWorkloadSecurityAPI
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CloudWorkloadSecurityAPI' do
  before do
    # run before each test
    @api_instance = DatadogAPIClient::V2::CloudWorkloadSecurityAPI.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CloudWorkloadSecurityAPI' do
    it 'should create an instance of CloudWorkloadSecurityAPI' do
      expect(@api_instance).to be_instance_of(DatadogAPIClient::V2::CloudWorkloadSecurityAPI)
    end
  end

  # unit tests for create_cloud_workload_security_agent_rule
  # Create a Cloud Workload Security Agent rule
  # Create a new Agent rule with the given parameters.
  # @param body The definition of the new Agent rule.
  # @param [Hash] opts the optional parameters
  # @return [CloudWorkloadSecurityAgentRuleResponse]
  describe 'create_cloud_workload_security_agent_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_cloud_workload_security_agent_rule
  # Delete a Cloud Workload Security Agent rule
  # Delete a specific Agent rule.
  # @param agent_rule_id The ID of the Agent rule.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_cloud_workload_security_agent_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for download_cloud_workload_policy_file
  # Get the latest Cloud Workload Security policy
  # The download endpoint generates a Cloud Workload Security policy file from your currently active Cloud Workload Security rules, and downloads them as a .policy file. This file can then be deployed to your agents to update the policy running in your environment.
  # @param [Hash] opts the optional parameters
  # @return [File]
  describe 'download_cloud_workload_policy_file test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_cloud_workload_security_agent_rule
  # Get a Cloud Workload Security Agent rule
  # Get the details of a specific Agent rule.
  # @param agent_rule_id The ID of the Agent rule.
  # @param [Hash] opts the optional parameters
  # @return [CloudWorkloadSecurityAgentRuleResponse]
  describe 'get_cloud_workload_security_agent_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_cloud_workload_security_agent_rules
  # Get all Cloud Workload Security Agent rules
  # Get the list of Agent rules.
  # @param [Hash] opts the optional parameters
  # @return [CloudWorkloadSecurityAgentRulesListResponse]
  describe 'list_cloud_workload_security_agent_rules test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_cloud_workload_security_agent_rule
  # Update a Cloud Workload Security Agent rule
  # Update a specific Agent rule. Returns the Agent rule object when the request is successful.
  # @param agent_rule_id The ID of the Agent rule.
  # @param body New definition of the Agent rule.
  # @param [Hash] opts the optional parameters
  # @return [CloudWorkloadSecurityAgentRuleResponse]
  describe 'update_cloud_workload_security_agent_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
