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
  # A list of annotations used in the workflow. These are like sticky notes for your workflow!
  class Annotation
    include BaseGenericModel

    # The definition of `AnnotationDisplay` object.
    attr_reader :display

    # The `Annotation` `id`.
    attr_reader :id

    # The definition of `AnnotationMarkdownTextAnnotation` object.
    attr_reader :markdown_text_annotation

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'display' => :'display',
        :'id' => :'id',
        :'markdown_text_annotation' => :'markdownTextAnnotation'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'display' => :'AnnotationDisplay',
        :'id' => :'String',
        :'markdown_text_annotation' => :'AnnotationMarkdownTextAnnotation'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::Annotation` initialize method"
      end

      self.additional_properties = {}
      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          self.additional_properties[k.to_sym] = v
        else
          h[k.to_sym] = v
        end
      }

      if attributes.key?(:'display')
        self.display = attributes[:'display']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'markdown_text_annotation')
        self.markdown_text_annotation = attributes[:'markdown_text_annotation']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @display.nil?
      return false if @id.nil?
      return false if @markdown_text_annotation.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param display [Object] Object to be assigned
    # @!visibility private
    def display=(display)
      if display.nil?
        fail ArgumentError, 'invalid value for "display", display cannot be nil.'
      end
      @display = display
    end

    # Custom attribute writer method with validation
    # @param id [Object] Object to be assigned
    # @!visibility private
    def id=(id)
      if id.nil?
        fail ArgumentError, 'invalid value for "id", id cannot be nil.'
      end
      @id = id
    end

    # Custom attribute writer method with validation
    # @param markdown_text_annotation [Object] Object to be assigned
    # @!visibility private
    def markdown_text_annotation=(markdown_text_annotation)
      if markdown_text_annotation.nil?
        fail ArgumentError, 'invalid value for "markdown_text_annotation", markdown_text_annotation cannot be nil.'
      end
      @markdown_text_annotation = markdown_text_annotation
    end

    # Returns the object in the form of hash, with additionalProperties support.
    # @return [Hash] Returns the object in the form of hash
    # @!visibility private
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      self.additional_properties.each_pair do |attr, value|
        hash[attr] = value
      end
      hash
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          display == o.display &&
          id == o.id &&
          markdown_text_annotation == o.markdown_text_annotation &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [display, id, markdown_text_annotation, additional_properties].hash
    end
  end
end
