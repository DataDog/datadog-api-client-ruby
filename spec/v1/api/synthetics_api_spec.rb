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

# Unit tests for DatadogAPIClient::V1::SyntheticsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SyntheticsApi' do
  before do
    # run before each test
    @api_instance = DatadogAPIClient::V1::SyntheticsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SyntheticsApi' do
    it 'should create an instance of SyntheticsApi' do
      expect(@api_instance).to be_instance_of(DatadogAPIClient::V1::SyntheticsApi)
    end
  end

  # unit tests for create_global_variable
  # Create a global variable
  # Create a Synthetics global variable.
  # @param body Details of the global variable to create.
  # @param [Hash] opts the optional parameters
  # @return [SyntheticsGlobalVariable]
  describe 'create_global_variable test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_test
  # Create a test
  # Create a Synthetic test.
  # @param body Details of the test to create.
  # @param [Hash] opts the optional parameters
  # @return [SyntheticsTestDetails]
  describe 'create_test test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_global_variable
  # Delete a global variable
  # Delete a Synthetics global variable.
  # @param variable_id The ID of the global variable.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_global_variable test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_tests
  # Delete tests
  # Delete multiple Synthetic tests by ID.
  # @param body Public ID list of the Synthetic tests to be deleted.
  # @param [Hash] opts the optional parameters
  # @return [SyntheticsDeleteTestsResponse]
  describe 'delete_tests test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for edit_global_variable
  # Edit a global variable
  # Edit a Synthetics global variable.
  # @param variable_id The ID of the global variable.
  # @param body Details of the global variable to update.
  # @param [Hash] opts the optional parameters
  # @return [SyntheticsGlobalVariable]
  describe 'edit_global_variable test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_api_test_latest_results
  # Get the test&#39;s latest results summaries (API)
  # Get the last 50 test results summaries for a given Synthetics API test.
  # @param public_id The public ID of the test for which to search results for.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :from_ts Timestamp from which to start querying results.
  # @option opts [Integer] :to_ts Timestamp up to which to query results.
  # @option opts [Array<String>] :probe_dc Locations for which to query results.
  # @return [SyntheticsGetAPITestLatestResultsResponse]
  describe 'get_api_test_latest_results test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_api_test_result
  # Get a test result (API)
  # Get a specific full result from a given (API) Synthetic test.
  # @param public_id The public ID of the API test to which the target result belongs.
  # @param result_id The ID of the result to get.
  # @param [Hash] opts the optional parameters
  # @return [SyntheticsAPITestResultFull]
  describe 'get_api_test_result test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_browser_test
  # Get a test configuration (browser)
  # Get the detailed configuration (including steps) associated with a Synthetic browser test.
  # @param public_id The public ID of the test to get details from.
  # @param [Hash] opts the optional parameters
  # @return [SyntheticsTestDetails]
  describe 'get_browser_test test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_browser_test_latest_results
  # Get the test&#39;s latest results summaries (browser)
  # Get the last 50 test results summaries for a given Synthetics Browser test.
  # @param public_id The public ID of the browser test for which to search results for.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :from_ts Timestamp from which to start querying results.
  # @option opts [Integer] :to_ts Timestamp up to which to query results.
  # @option opts [Array<String>] :probe_dc Locations for which to query results.
  # @return [SyntheticsGetBrowserTestLatestResultsResponse]
  describe 'get_browser_test_latest_results test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_browser_test_result
  # Get a test result (browser)
  # Get a specific full result from a given (browser) Synthetic test.
  # @param public_id The public ID of the browser test to which the target result belongs.
  # @param result_id The ID of the result to get.
  # @param [Hash] opts the optional parameters
  # @return [SyntheticsBrowserTestResultFull]
  describe 'get_browser_test_result test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_global_variable
  # Get a global variable
  # Get the detailed configuration of a global variable.
  # @param variable_id The ID of the global variable.
  # @param [Hash] opts the optional parameters
  # @return [SyntheticsGlobalVariable]
  describe 'get_global_variable test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_test
  # Get a test configuration (API)
  # Get the detailed configuration associated with a Synthetics test.
  # @param public_id The public ID of the test to get details from.
  # @param [Hash] opts the optional parameters
  # @return [SyntheticsTestDetails]
  describe 'get_test test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_locations
  # Get all locations (public and private)
  # Get the list of public and private locations available for Synthetic tests. No arguments required.
  # @param [Hash] opts the optional parameters
  # @return [SyntheticsLocations]
  describe 'list_locations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_tests
  # Get the list of all tests
  # Get the list of all Synthetic tests.
  # @param [Hash] opts the optional parameters
  # @return [SyntheticsListTestsResponse]
  describe 'list_tests test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for trigger_ci_tests
  # Trigger some Synthetics tests for CI
  # Trigger a set of Synthetics tests for continuous integration
  # @param body Details of the test to trigger.
  # @param [Hash] opts the optional parameters
  # @return [SyntheticsTriggerCITestsResponse]
  describe 'trigger_ci_tests test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_test
  # Edit a test
  # Edit the configuration of a Synthetic test.
  # @param public_id The public ID of the test to get details from.
  # @param body New test details to be saved.
  # @param [Hash] opts the optional parameters
  # @return [SyntheticsTestDetails]
  describe 'update_test test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_test_pause_status
  # Pause or start a test
  # Pause or start a Synthetics test by changing the status.
  # @param public_id The public ID of the Synthetic test to update.
  # @param body Status to set the given Synthetic test to.
  # @param [Hash] opts the optional parameters
  # @return [Boolean]
  describe 'update_test_pause_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
