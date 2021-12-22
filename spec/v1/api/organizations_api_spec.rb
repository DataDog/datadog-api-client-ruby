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

# Unit tests for DatadogAPIClient::V1::OrganizationsAPI
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OrganizationsAPI' do
  before do
    # run before each test
    @api_instance = DatadogAPIClient::V1::OrganizationsAPI.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrganizationsAPI' do
    it 'should create an instance of OrganizationsAPI' do
      expect(@api_instance).to be_instance_of(DatadogAPIClient::V1::OrganizationsAPI)
    end
  end

  # unit tests for create_child_org
  # Create a child organization
  # Create a child organization.  This endpoint requires the [multi-organization account](https://docs.datadoghq.com/account_management/multi_organization/) feature and must be enabled by [contacting support](https://docs.datadoghq.com/help/).  Once a new child organization is created, you can interact with it by using the &#x60;org.public_id&#x60;, &#x60;api_key.key&#x60;, and &#x60;application_key.hash&#x60; provided in the response.
  # @param body Organization object that needs to be created
  # @param [Hash] opts the optional parameters
  # @return [OrganizationCreateResponse]
  describe 'create_child_org test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_org
  # Get organization information
  # Get organization information.
  # @param public_id The &#x60;public_id&#x60; of the organization you are operating within.
  # @param [Hash] opts the optional parameters
  # @return [OrganizationResponse]
  describe 'get_org test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_orgs
  # List your managed organizations
  # List your managed organizations.
  # @param [Hash] opts the optional parameters
  # @return [OrganizationListResponse]
  describe 'list_orgs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_org
  # Update your organization
  # Update your organization.
  # @param public_id The &#x60;public_id&#x60; of the organization you are operating within.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [OrganizationResponse]
  describe 'update_org test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for upload_id_p_for_org
  # Upload IdP metadata
  # There are a couple of options for updating the Identity Provider (IdP) metadata from your SAML IdP.  * **Multipart Form-Data**: Post the IdP metadata file using a form post.  * **XML Body:** Post the IdP metadata file as the body of the request.
  # @param public_id The &#x60;public_id&#x60; of the organization you are operating with
  # @param idp_file The path to the XML metadata file you wish to upload.
  # @param [Hash] opts the optional parameters
  # @return [IdpResponse]
  describe 'upload_id_p_for_org test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
