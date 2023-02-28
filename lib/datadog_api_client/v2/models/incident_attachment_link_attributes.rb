=begin
#Datadog API V2 Collection

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

module DatadogAPIClient::V2
  # The attributes object for a link attachment.
  class IncidentAttachmentLinkAttributes
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # The link attachment.
    attr_reader :attachment

    # The type of link attachment attributes.
    attr_reader :attachment_type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'attachment' => :'attachment',
        :'attachment_type' => :'attachment_type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'attachment' => :'IncidentAttachmentLinkAttributesAttachmentObject',
        :'attachment_type' => :'IncidentAttachmentLinkAttachmentType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::IncidentAttachmentLinkAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::IncidentAttachmentLinkAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'attachment')
        self.attachment = attributes[:'attachment']
      end

      if attributes.key?(:'attachment_type')
        self.attachment_type = attributes[:'attachment_type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @attachment.nil?
      return false if @attachment_type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param attachment [Object] Object to be assigned
    # @!visibility private
    def attachment=(attachment)
      if attachment.nil?
        fail ArgumentError, 'invalid value for "attachment", attachment cannot be nil.'
      end
      @attachment = attachment
    end

    # Custom attribute writer method with validation
    # @param attachment_type [Object] Object to be assigned
    # @!visibility private
    def attachment_type=(attachment_type)
      if attachment_type.nil?
        fail ArgumentError, 'invalid value for "attachment_type", attachment_type cannot be nil.'
      end
      @attachment_type = attachment_type
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          attachment == o.attachment &&
          attachment_type == o.attachment_type
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [:attachment, :attachment_type].hash
    end
  end
end
