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

# Unit tests for DatadogAPIClient::V2::DashboardListsAPI
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DashboardListsAPI' do
  before do
    # run before each test
    @api_instance = DatadogAPIClient::V2::DashboardListsAPI.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DashboardListsAPI' do
    it 'should create an instance of DashboardListsAPI' do
      expect(@api_instance).to be_instance_of(DatadogAPIClient::V2::DashboardListsAPI)
    end
  end

  # unit tests for create_dashboard_list_items
  # Add Items to a Dashboard List
  # Add dashboards to an existing dashboard list.
  # @param dashboard_list_id ID of the dashboard list to add items to.
  # @param body Dashboards to add to the dashboard list.
  # @param [Hash] opts the optional parameters
  # @return [DashboardListAddItemsResponse]
  describe 'create_dashboard_list_items test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_dashboard_list_items
  # Delete items from a dashboard list
  # Delete dashboards from an existing dashboard list.
  # @param dashboard_list_id ID of the dashboard list to delete items from.
  # @param body Dashboards to delete from the dashboard list.
  # @param [Hash] opts the optional parameters
  # @return [DashboardListDeleteItemsResponse]
  describe 'delete_dashboard_list_items test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_dashboard_list_items
  # Get items of a Dashboard List
  # Fetch the dashboard list’s dashboard definitions.
  # @param dashboard_list_id ID of the dashboard list to get items from.
  # @param [Hash] opts the optional parameters
  # @return [DashboardListItems]
  describe 'get_dashboard_list_items test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_dashboard_list_items
  # Update items of a dashboard list
  # Update dashboards of an existing dashboard list.
  # @param dashboard_list_id ID of the dashboard list to update items from.
  # @param body New dashboards of the dashboard list.
  # @param [Hash] opts the optional parameters
  # @return [DashboardListUpdateItemsResponse]
  describe 'update_dashboard_list_items test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
