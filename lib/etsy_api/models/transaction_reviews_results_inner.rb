=begin
#Etsy Open API v3

#<div class=\"wt-text-body-01\"><p class=\"wt-pt-xs-2 wt-pb-xs-2\">Etsy's Open API provides a simple RESTful interface for various Etsy.com features. The API endpoints are meant to replace Etsy's Open API v2, which is scheduled to end service in 2022.</p><p class=\"wt-pb-xs-2\">All of the endpoints are callable and the majority of the API endpoints are now in a beta phase. This means we do not expect to make any breaking changes before our general release. A handful of endpoints are currently interface stubs (labeled “Feedback Only”) and returns a \"501 Not Implemented\" response code when called.</p><p class=\"wt-pb-xs-2\">If you'd like to report an issue or provide feedback on the API design, <a target=\"_blank\" class=\"wt-text-link wt-p-xs-0\" href=\"https://github.com/etsy/open-api/issues/new/choose\">please add an issue in Github</a>.</p></div>&copy; 2021-2022 Etsy, Inc. All Rights Reserved. Use of this code is subject to Etsy's <a class='wt-text-link wt-p-xs-0' target='_blank' href='https://www.etsy.com/legal/api'>API Developer Terms of Use</a>.

The version of the OpenAPI document: 3.0.0
Contact: developers@etsy.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module EtsyApi
  # The TransactionReview resources found.
  class TransactionReviewsResultsInner
    # The shop's numeric ID.
    attr_accessor :shop_id

    # The ID of the ShopListing that the TransactionReview belongs to.
    attr_accessor :listing_id

    # The ID of the ShopReceipt Transaction that the TransactionReview belongs to.
    attr_accessor :transaction_id

    # The numeric ID of the user who was the buyer in this transaction. Note: This field may be absent, depending on the buyer's privacy settings.
    attr_accessor :buyer_user_id

    # Rating value on scale from 1 to 5
    attr_accessor :rating

    # A message left by the author, explaining the feedback, if provided.
    attr_accessor :review

    # The language of the TransactionReview
    attr_accessor :language

    # The url to a photo provided with the feedback, dimensions fullxfull. Note: This field may be absent, depending on the buyer's privacy settings.
    attr_accessor :image_url_fullxfull

    # The date and time the TransactionReview was created in epoch seconds.
    attr_accessor :create_timestamp

    # The date and time the TransactionReview was created in epoch seconds.
    attr_accessor :created_timestamp

    # The date and time the TransactionReview was updated in epoch seconds.
    attr_accessor :update_timestamp

    # The date and time the TransactionReview was updated in epoch seconds.
    attr_accessor :updated_timestamp

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'shop_id' => :'shop_id',
        :'listing_id' => :'listing_id',
        :'transaction_id' => :'transaction_id',
        :'buyer_user_id' => :'buyer_user_id',
        :'rating' => :'rating',
        :'review' => :'review',
        :'language' => :'language',
        :'image_url_fullxfull' => :'image_url_fullxfull',
        :'create_timestamp' => :'create_timestamp',
        :'created_timestamp' => :'created_timestamp',
        :'update_timestamp' => :'update_timestamp',
        :'updated_timestamp' => :'updated_timestamp'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'shop_id' => :'Integer',
        :'listing_id' => :'Integer',
        :'transaction_id' => :'Integer',
        :'buyer_user_id' => :'Integer',
        :'rating' => :'Integer',
        :'review' => :'String',
        :'language' => :'String',
        :'image_url_fullxfull' => :'String',
        :'create_timestamp' => :'Integer',
        :'created_timestamp' => :'Integer',
        :'update_timestamp' => :'Integer',
        :'updated_timestamp' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'buyer_user_id',
        :'image_url_fullxfull',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'TransactionReview'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `EtsyApi::TransactionReviewsResultsInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `EtsyApi::TransactionReviewsResultsInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'shop_id')
        self.shop_id = attributes[:'shop_id']
      end

      if attributes.key?(:'listing_id')
        self.listing_id = attributes[:'listing_id']
      end

      if attributes.key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end

      if attributes.key?(:'buyer_user_id')
        self.buyer_user_id = attributes[:'buyer_user_id']
      end

      if attributes.key?(:'rating')
        self.rating = attributes[:'rating']
      end

      if attributes.key?(:'review')
        self.review = attributes[:'review']
      else
        self.review = ''
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'image_url_fullxfull')
        self.image_url_fullxfull = attributes[:'image_url_fullxfull']
      end

      if attributes.key?(:'create_timestamp')
        self.create_timestamp = attributes[:'create_timestamp']
      end

      if attributes.key?(:'created_timestamp')
        self.created_timestamp = attributes[:'created_timestamp']
      end

      if attributes.key?(:'update_timestamp')
        self.update_timestamp = attributes[:'update_timestamp']
      end

      if attributes.key?(:'updated_timestamp')
        self.updated_timestamp = attributes[:'updated_timestamp']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@shop_id.nil? && @shop_id < 1
        invalid_properties.push('invalid value for "shop_id", must be greater than or equal to 1.')
      end

      if !@listing_id.nil? && @listing_id < 1
        invalid_properties.push('invalid value for "listing_id", must be greater than or equal to 1.')
      end

      if !@transaction_id.nil? && @transaction_id < 1
        invalid_properties.push('invalid value for "transaction_id", must be greater than or equal to 1.')
      end

      if !@buyer_user_id.nil? && @buyer_user_id < 1
        invalid_properties.push('invalid value for "buyer_user_id", must be greater than or equal to 1.')
      end

      if !@rating.nil? && @rating > 5
        invalid_properties.push('invalid value for "rating", must be smaller than or equal to 5.')
      end

      if !@rating.nil? && @rating < 1
        invalid_properties.push('invalid value for "rating", must be greater than or equal to 1.')
      end

      if !@create_timestamp.nil? && @create_timestamp < 946684800
        invalid_properties.push('invalid value for "create_timestamp", must be greater than or equal to 946684800.')
      end

      if !@created_timestamp.nil? && @created_timestamp < 946684800
        invalid_properties.push('invalid value for "created_timestamp", must be greater than or equal to 946684800.')
      end

      if !@update_timestamp.nil? && @update_timestamp < 946684800
        invalid_properties.push('invalid value for "update_timestamp", must be greater than or equal to 946684800.')
      end

      if !@updated_timestamp.nil? && @updated_timestamp < 946684800
        invalid_properties.push('invalid value for "updated_timestamp", must be greater than or equal to 946684800.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@shop_id.nil? && @shop_id < 1
      return false if !@listing_id.nil? && @listing_id < 1
      return false if !@transaction_id.nil? && @transaction_id < 1
      return false if !@buyer_user_id.nil? && @buyer_user_id < 1
      return false if !@rating.nil? && @rating > 5
      return false if !@rating.nil? && @rating < 1
      return false if !@create_timestamp.nil? && @create_timestamp < 946684800
      return false if !@created_timestamp.nil? && @created_timestamp < 946684800
      return false if !@update_timestamp.nil? && @update_timestamp < 946684800
      return false if !@updated_timestamp.nil? && @updated_timestamp < 946684800
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] shop_id Value to be assigned
    def shop_id=(shop_id)
      if !shop_id.nil? && shop_id < 1
        fail ArgumentError, 'invalid value for "shop_id", must be greater than or equal to 1.'
      end

      @shop_id = shop_id
    end

    # Custom attribute writer method with validation
    # @param [Object] listing_id Value to be assigned
    def listing_id=(listing_id)
      if !listing_id.nil? && listing_id < 1
        fail ArgumentError, 'invalid value for "listing_id", must be greater than or equal to 1.'
      end

      @listing_id = listing_id
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction_id Value to be assigned
    def transaction_id=(transaction_id)
      if !transaction_id.nil? && transaction_id < 1
        fail ArgumentError, 'invalid value for "transaction_id", must be greater than or equal to 1.'
      end

      @transaction_id = transaction_id
    end

    # Custom attribute writer method with validation
    # @param [Object] buyer_user_id Value to be assigned
    def buyer_user_id=(buyer_user_id)
      if !buyer_user_id.nil? && buyer_user_id < 1
        fail ArgumentError, 'invalid value for "buyer_user_id", must be greater than or equal to 1.'
      end

      @buyer_user_id = buyer_user_id
    end

    # Custom attribute writer method with validation
    # @param [Object] rating Value to be assigned
    def rating=(rating)
      if !rating.nil? && rating > 5
        fail ArgumentError, 'invalid value for "rating", must be smaller than or equal to 5.'
      end

      if !rating.nil? && rating < 1
        fail ArgumentError, 'invalid value for "rating", must be greater than or equal to 1.'
      end

      @rating = rating
    end

    # Custom attribute writer method with validation
    # @param [Object] create_timestamp Value to be assigned
    def create_timestamp=(create_timestamp)
      if !create_timestamp.nil? && create_timestamp < 946684800
        fail ArgumentError, 'invalid value for "create_timestamp", must be greater than or equal to 946684800.'
      end

      @create_timestamp = create_timestamp
    end

    # Custom attribute writer method with validation
    # @param [Object] created_timestamp Value to be assigned
    def created_timestamp=(created_timestamp)
      if !created_timestamp.nil? && created_timestamp < 946684800
        fail ArgumentError, 'invalid value for "created_timestamp", must be greater than or equal to 946684800.'
      end

      @created_timestamp = created_timestamp
    end

    # Custom attribute writer method with validation
    # @param [Object] update_timestamp Value to be assigned
    def update_timestamp=(update_timestamp)
      if !update_timestamp.nil? && update_timestamp < 946684800
        fail ArgumentError, 'invalid value for "update_timestamp", must be greater than or equal to 946684800.'
      end

      @update_timestamp = update_timestamp
    end

    # Custom attribute writer method with validation
    # @param [Object] updated_timestamp Value to be assigned
    def updated_timestamp=(updated_timestamp)
      if !updated_timestamp.nil? && updated_timestamp < 946684800
        fail ArgumentError, 'invalid value for "updated_timestamp", must be greater than or equal to 946684800.'
      end

      @updated_timestamp = updated_timestamp
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          shop_id == o.shop_id &&
          listing_id == o.listing_id &&
          transaction_id == o.transaction_id &&
          buyer_user_id == o.buyer_user_id &&
          rating == o.rating &&
          review == o.review &&
          language == o.language &&
          image_url_fullxfull == o.image_url_fullxfull &&
          create_timestamp == o.create_timestamp &&
          created_timestamp == o.created_timestamp &&
          update_timestamp == o.update_timestamp &&
          updated_timestamp == o.updated_timestamp
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [shop_id, listing_id, transaction_id, buyer_user_id, rating, review, language, image_url_fullxfull, create_timestamp, created_timestamp, update_timestamp, updated_timestamp].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = EtsyApi.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
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
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
