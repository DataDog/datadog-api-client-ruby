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
  # Software or hardware component.
  class SBOMComponent
    include BaseGenericModel

    # An optional identifier that can be used to reference the component elsewhere in the BOM.
    attr_accessor :bom_ref

    # The software licenses of the SBOM component.
    attr_accessor :licenses

    # The name of the component. This will often be a shortened, single name of the component.
    attr_reader :name

    # The custom properties of the component of the SBOM.
    attr_accessor :properties

    # Specifies the package-url (purl). The purl, if specified, MUST be valid and conform to the [specification](https://github.com/package-url/purl-spec).
    attr_accessor :purl

    # The supplier of the component.
    attr_reader :supplier

    # The SBOM component type
    attr_reader :type

    # The component version.
    attr_reader :version

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'bom_ref' => :'bom-ref',
        :'licenses' => :'licenses',
        :'name' => :'name',
        :'properties' => :'properties',
        :'purl' => :'purl',
        :'supplier' => :'supplier',
        :'type' => :'type',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'bom_ref' => :'String',
        :'licenses' => :'Array<SBOMComponentLicense>',
        :'name' => :'String',
        :'properties' => :'Array<SBOMComponentProperty>',
        :'purl' => :'String',
        :'supplier' => :'SBOMComponentSupplier',
        :'type' => :'SBOMComponentType',
        :'version' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SBOMComponent` initialize method"
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

      if attributes.key?(:'bom_ref')
        self.bom_ref = attributes[:'bom_ref']
      end

      if attributes.key?(:'licenses')
        if (value = attributes[:'licenses']).is_a?(Array)
          self.licenses = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'properties')
        if (value = attributes[:'properties']).is_a?(Array)
          self.properties = value
        end
      end

      if attributes.key?(:'purl')
        self.purl = attributes[:'purl']
      end

      if attributes.key?(:'supplier')
        self.supplier = attributes[:'supplier']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @name.nil?
      return false if @supplier.nil?
      return false if @type.nil?
      return false if @version.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param name [Object] Object to be assigned
    # @!visibility private
    def name=(name)
      if name.nil?
        fail ArgumentError, 'invalid value for "name", name cannot be nil.'
      end
      @name = name
    end

    # Custom attribute writer method with validation
    # @param supplier [Object] Object to be assigned
    # @!visibility private
    def supplier=(supplier)
      if supplier.nil?
        fail ArgumentError, 'invalid value for "supplier", supplier cannot be nil.'
      end
      @supplier = supplier
    end

    # Custom attribute writer method with validation
    # @param type [Object] Object to be assigned
    # @!visibility private
    def type=(type)
      if type.nil?
        fail ArgumentError, 'invalid value for "type", type cannot be nil.'
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param version [Object] Object to be assigned
    # @!visibility private
    def version=(version)
      if version.nil?
        fail ArgumentError, 'invalid value for "version", version cannot be nil.'
      end
      @version = version
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
          bom_ref == o.bom_ref &&
          licenses == o.licenses &&
          name == o.name &&
          properties == o.properties &&
          purl == o.purl &&
          supplier == o.supplier &&
          type == o.type &&
          version == o.version &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [bom_ref, licenses, name, properties, purl, supplier, type, version, additional_properties].hash
    end
  end
end
