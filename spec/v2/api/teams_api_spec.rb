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

# Unit tests for DatadogAPIClient::V2::TeamsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TeamsApi' do
  before do
    # run before each test
    @api_instance = DatadogAPIClient::V2::TeamsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TeamsApi' do
    it 'should create an instance of TeamsApi' do
      expect(@api_instance).to be_instance_of(DatadogAPIClient::V2::TeamsApi)
    end
  end

  # unit tests for create_team
  # Create a new team
  # Creates a new team.
  # @param body Teams Payload.
  # @param [Hash] opts the optional parameters
  # @return [TeamResponse]
  describe 'create_team test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_team
  # Delete an existing team
  # Deletes an existing team.
  # @param team_id The ID of the team.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_team test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_team
  # Get details of a team
  # Get details of a team. If the &#x60;include[users]&#x60; query parameter is provided, the included attribute will contain the users related to these teams.
  # @param team_id The ID of the team.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Specifies which types of related objects should be included in the response.
  # @return [TeamResponse]
  describe 'get_team test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_teams
  # Get a list of all teams
  # Get all teams for the requesting user&#39;s organization. If the &#x60;include[users]&#x60; query parameter is provided, the included attribute will contain the users related to these teams.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Specifies which types of related objects should be included in the response.
  # @option opts [Integer] :page_size Size for a given page.
  # @option opts [Integer] :page_offset Specific offset to use as the beginning of the returned page.
  # @return [TeamsResponse]
  describe 'get_teams test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_team
  # Update an existing team
  # Updates an existing team. Only provide the attributes which should be updated as this request is a partial update.
  # @param team_id The ID of the team.
  # @param body Teams Payload.
  # @param [Hash] opts the optional parameters
  # @return [TeamResponse]
  describe 'update_team test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
