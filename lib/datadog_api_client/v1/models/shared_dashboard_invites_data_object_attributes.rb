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
  # Attributes of the shared dashboard invitation
  class SharedDashboardInvitesDataObjectAttributes
    include BaseGenericModel

    # When the invitation was sent.
    attr_accessor :created_at

    # An email address that an invitation has been (or if used in invitation request, will be) sent to.
    attr_accessor :email

    # Indicates whether an active session exists for the invitation (produced when a user clicks the link in the email).
    attr_accessor :has_session

    # When the invitation expires.
    attr_accessor :invitation_expiry

    # When the invited user's session expires. null if the invitation has no associated session.
    attr_accessor :session_expiry

    # The unique token of the shared dashboard that was (or is to be) shared.
    attr_accessor :share_token

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'created_at' => :'created_at',
        :'email' => :'email',
        :'has_session' => :'has_session',
        :'invitation_expiry' => :'invitation_expiry',
        :'session_expiry' => :'session_expiry',
        :'share_token' => :'share_token'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'created_at' => :'Time',
        :'email' => :'String',
        :'has_session' => :'Boolean',
        :'invitation_expiry' => :'Time',
        :'session_expiry' => :'Time',
        :'share_token' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'session_expiry',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SharedDashboardInvitesDataObjectAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SharedDashboardInvitesDataObjectAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'has_session')
        self.has_session = attributes[:'has_session']
      end

      if attributes.key?(:'invitation_expiry')
        self.invitation_expiry = attributes[:'invitation_expiry']
      end

      if attributes.key?(:'session_expiry')
        self.session_expiry = attributes[:'session_expiry']
      end

      if attributes.key?(:'share_token')
        self.share_token = attributes[:'share_token']
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
          created_at == o.created_at &&
          email == o.email &&
          has_session == o.has_session &&
          invitation_expiry == o.invitation_expiry &&
          session_expiry == o.session_expiry &&
          share_token == o.share_token
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [created_at, email, has_session, invitation_expiry, session_expiry, share_token].hash
    end
  end
end
