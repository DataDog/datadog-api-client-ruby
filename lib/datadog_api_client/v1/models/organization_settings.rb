=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # A JSON array of settings.
  class OrganizationSettings
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Whether or not the organization users can share widgets outside of Datadog.
    attr_accessor :private_widget_share

    # Set the boolean property enabled to enable or disable single sign on with SAML.
    # See the SAML documentation for more information about all SAML settings.
    attr_accessor :saml

    # The access role of the user. Options are **st** (standard user), **adm** (admin user), or **ro** (read-only user).
    attr_accessor :saml_autocreate_access_role

    # Has two properties, `enabled` (boolean) and `domains`, which is a list of domains without the @ symbol.
    attr_accessor :saml_autocreate_users_domains

    # Whether or not SAML can be enabled for this organization.
    attr_accessor :saml_can_be_enabled

    # Identity provider endpoint for SAML authentication.
    attr_accessor :saml_idp_endpoint

    # Has one property enabled (boolean).
    attr_accessor :saml_idp_initiated_login

    # Whether or not a SAML identity provider metadata file was provided to the Datadog organization.
    attr_accessor :saml_idp_metadata_uploaded

    # URL for SAML logging.
    attr_accessor :saml_login_url

    # Has one property enabled (boolean).
    attr_accessor :saml_strict_mode

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'private_widget_share' => :'private_widget_share',
        :'saml' => :'saml',
        :'saml_autocreate_access_role' => :'saml_autocreate_access_role',
        :'saml_autocreate_users_domains' => :'saml_autocreate_users_domains',
        :'saml_can_be_enabled' => :'saml_can_be_enabled',
        :'saml_idp_endpoint' => :'saml_idp_endpoint',
        :'saml_idp_initiated_login' => :'saml_idp_initiated_login',
        :'saml_idp_metadata_uploaded' => :'saml_idp_metadata_uploaded',
        :'saml_login_url' => :'saml_login_url',
        :'saml_strict_mode' => :'saml_strict_mode'
      }
    end

    # Returns all the JSON keys this model knows about
    # @!visibility private
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'private_widget_share' => :'Boolean',
        :'saml' => :'OrganizationSettingsSaml',
        :'saml_autocreate_access_role' => :'AccessRole',
        :'saml_autocreate_users_domains' => :'OrganizationSettingsSamlAutocreateUsersDomains',
        :'saml_can_be_enabled' => :'Boolean',
        :'saml_idp_endpoint' => :'String',
        :'saml_idp_initiated_login' => :'OrganizationSettingsSamlIdpInitiatedLogin',
        :'saml_idp_metadata_uploaded' => :'Boolean',
        :'saml_login_url' => :'String',
        :'saml_strict_mode' => :'OrganizationSettingsSamlStrictMode'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::OrganizationSettings` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::OrganizationSettings`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'private_widget_share')
        self.private_widget_share = attributes[:'private_widget_share']
      end

      if attributes.key?(:'saml')
        self.saml = attributes[:'saml']
      end

      if attributes.key?(:'saml_autocreate_access_role')
        self.saml_autocreate_access_role = attributes[:'saml_autocreate_access_role']
      end

      if attributes.key?(:'saml_autocreate_users_domains')
        self.saml_autocreate_users_domains = attributes[:'saml_autocreate_users_domains']
      end

      if attributes.key?(:'saml_can_be_enabled')
        self.saml_can_be_enabled = attributes[:'saml_can_be_enabled']
      end

      if attributes.key?(:'saml_idp_endpoint')
        self.saml_idp_endpoint = attributes[:'saml_idp_endpoint']
      end

      if attributes.key?(:'saml_idp_initiated_login')
        self.saml_idp_initiated_login = attributes[:'saml_idp_initiated_login']
      end

      if attributes.key?(:'saml_idp_metadata_uploaded')
        self.saml_idp_metadata_uploaded = attributes[:'saml_idp_metadata_uploaded']
      end

      if attributes.key?(:'saml_login_url')
        self.saml_login_url = attributes[:'saml_login_url']
      end

      if attributes.key?(:'saml_strict_mode')
        self.saml_strict_mode = attributes[:'saml_strict_mode']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          private_widget_share == o.private_widget_share &&
          saml == o.saml &&
          saml_autocreate_access_role == o.saml_autocreate_access_role &&
          saml_autocreate_users_domains == o.saml_autocreate_users_domains &&
          saml_can_be_enabled == o.saml_can_be_enabled &&
          saml_idp_endpoint == o.saml_idp_endpoint &&
          saml_idp_initiated_login == o.saml_idp_initiated_login &&
          saml_idp_metadata_uploaded == o.saml_idp_metadata_uploaded &&
          saml_login_url == o.saml_login_url &&
          saml_strict_mode == o.saml_strict_mode
    end

    # @see the `==` method
    # @param o [Object] Object to be compared
    # @!visibility private
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [private_widget_share, saml, saml_autocreate_access_role, saml_autocreate_users_domains, saml_can_be_enabled, saml_idp_endpoint, saml_idp_initiated_login, saml_idp_metadata_uploaded, saml_login_url, saml_strict_mode].hash
    end
  end
end
