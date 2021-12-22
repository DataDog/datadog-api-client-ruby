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

# Unit tests for DatadogAPIClient::V1::ServiceLevelObjectivesAPI
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ServiceLevelObjectivesAPI' do
  before do
    # run before each test
    @api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ServiceLevelObjectivesAPI' do
    it 'should create an instance of ServiceLevelObjectivesAPI' do
      expect(@api_instance).to be_instance_of(DatadogAPIClient::V1::ServiceLevelObjectivesAPI)
    end
  end

  # unit tests for check_can_delete_slo
  # Check if SLOs can be safely deleted
  # Check if an SLO can be safely deleted. For example, assure an SLO can be deleted without disrupting a dashboard.
  # @param ids A comma separated list of the IDs of the service level objectives objects.
  # @param [Hash] opts the optional parameters
  # @return [CheckCanDeleteSLOResponse]
  describe 'check_can_delete_slo test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_slo
  # Create an SLO object
  # Create a service level objective object.
  # @param body Service level objective request object.
  # @param [Hash] opts the optional parameters
  # @return [SLOListResponse]
  describe 'create_slo test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_slo
  # Delete an SLO
  # Permanently delete the specified service level objective object.  If an SLO is used in a dashboard, the &#x60;DELETE /v1/slo/&#x60; endpoint returns a 409 conflict error because the SLO is referenced in a dashboard.
  # @param slo_id The ID of the service level objective.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :force Delete the monitor even if it&#39;s referenced by other resources (for example SLO, composite monitor).
  # @return [SLODeleteResponse]
  describe 'delete_slo test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_slo_timeframe_in_bulk
  # Bulk Delete SLO Timeframes
  # Delete (or partially delete) multiple service level objective objects.  This endpoint facilitates deletion of one or more thresholds for one or more service level objective objects. If all thresholds are deleted, the service level objective object is deleted as well.
  # @param body Delete multiple service level objective objects request body.
  # @param [Hash] opts the optional parameters
  # @return [SLOBulkDeleteResponse]
  describe 'delete_slo_timeframe_in_bulk test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_slo
  # Get an SLO&#39;s details
  # Get a service level objective object.
  # @param slo_id The ID of the service level objective object.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :with_configured_alert_ids Get the IDs of SLO monitors that reference this SLO.
  # @return [SLOResponse]
  describe 'get_slo test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_slo_corrections
  # Get Corrections For an SLO
  # Get corrections applied to an SLO
  # @param slo_id The ID of the service level objective object.
  # @param [Hash] opts the optional parameters
  # @return [SLOCorrectionListResponse]
  describe 'get_slo_corrections test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_slo_history
  # Get an SLO&#39;s history
  # Get a specific SLO’s history, regardless of its SLO type.  The detailed history data is structured according to the source data type. For example, metric data is included for event SLOs that use the metric source, and monitor SLO types include the monitor transition history.  **Note:** There are different response formats for event based and time based SLOs. Examples of both are shown.
  # @param slo_id The ID of the service level objective object.
  # @param from_ts The &#x60;from&#x60; timestamp for the query window in epoch seconds.
  # @param to_ts The &#x60;to&#x60; timestamp for the query window in epoch seconds.
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :target The SLO target. If &#x60;target&#x60; is passed in, the response will include the remaining error budget and a timeframe value of &#x60;custom&#x60;.
  # @option opts [Boolean] :apply_correction Defaults to &#x60;true&#x60;. If any SLO corrections are applied and this parameter is set to &#x60;false&#x60;, then the corrections will not be applied and the SLI values will not be affected.
  # @return [SLOHistoryResponse]
  describe 'get_slo_history test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_slos
  # Get all SLOs
  # Get a list of service level objective objects for your organization.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ids A comma separated list of the IDs of the service level objectives objects.
  # @option opts [String] :query The query string to filter results based on SLO names.
  # @option opts [String] :tags_query The query string to filter results based on a single SLO tag.
  # @option opts [String] :metrics_query The query string to filter results based on SLO numerator and denominator.
  # @option opts [Integer] :limit The number of SLOs to return in the response.
  # @option opts [Integer] :offset The specific offset to use as the beginning of the returned response.
  # @return [SLOListResponse]
  describe 'list_slos test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_slo
  # Update an SLO
  # Update the specified service level objective object.
  # @param slo_id The ID of the service level objective object.
  # @param body The edited service level objective request object.
  # @param [Hash] opts the optional parameters
  # @return [SLOListResponse]
  describe 'update_slo test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
