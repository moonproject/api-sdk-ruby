=begin
#Mooncard API

#Access Mooncard data from anywhere

OpenAPI spec version: 3.0.0
Contact: hello@mooncard.co
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'date'

module Mooncard
  class UserProfile
    attr_accessor :id

    attr_accessor :email

    attr_accessor :firstname

    attr_accessor :lastname

    # Required for cardholders. The JSON must contain `street`, `postcode`, `city`, `country`.
    attr_accessor :address

    # Choose language for app and messages, ISO code alpha 2
    attr_accessor :locale

    # Require for card holders
    attr_accessor :birthdate

    # Require for card holders, use for 3DS and 2 factor validation, format E.164 (international)
    attr_accessor :phone

    attr_accessor :position

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :confirmed_at

    attr_accessor :archived_at

    # Array of user_profile_id
    attr_accessor :direct_manager_ids

    attr_accessor :company_id

    # Allow access to the interface
    attr_accessor :active

    # Use for analytical accounting
    attr_accessor :analytic_code

    # Your unique code for the employee
    attr_accessor :code

    # Employee account use for personal expense to refund or for an accountability in an expenses report journal / miscellaneous
    attr_accessor :accounting_employee_account

    # If you want to dedicate a charge account for each employee
    attr_accessor :accounting_charge_account

    # Is it activated for the employee (required for admins)
    attr_accessor :two_factor_active

    attr_accessor :role

    # Determine which journal to use when you have 2 journals (purchasing and Miscellaneous)
    attr_accessor :expense_type

    attr_accessor :status

    attr_accessor :auto_check_rebilling

    attr_accessor :use_km_expenses

    attr_accessor :use_manual_expenses

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'email' => :'email',
        :'firstname' => :'firstname',
        :'lastname' => :'lastname',
        :'address' => :'address',
        :'locale' => :'locale',
        :'birthdate' => :'birthdate',
        :'phone' => :'phone',
        :'position' => :'position',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'confirmed_at' => :'confirmed_at',
        :'archived_at' => :'archived_at',
        :'direct_manager_ids' => :'direct_manager_ids',
        :'company_id' => :'company_id',
        :'active' => :'active',
        :'analytic_code' => :'analytic_code',
        :'code' => :'code',
        :'accounting_employee_account' => :'accounting_employee_account',
        :'accounting_charge_account' => :'accounting_charge_account',
        :'two_factor_active' => :'two_factor_active',
        :'role' => :'role',
        :'expense_type' => :'expense_type',
        :'status' => :'status',
        :'auto_check_rebilling' => :'auto_check_rebilling',
        :'use_km_expenses' => :'use_km_expenses',
        :'use_manual_expenses' => :'use_manual_expenses'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'email' => :'String',
        :'firstname' => :'String',
        :'lastname' => :'String',
        :'address' => :'Address',
        :'locale' => :'String',
        :'birthdate' => :'Date',
        :'phone' => :'String',
        :'position' => :'String',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'confirmed_at' => :'DateTime',
        :'archived_at' => :'DateTime',
        :'direct_manager_ids' => :'Array<null>',
        :'company_id' => :'String',
        :'active' => :'BOOLEAN',
        :'analytic_code' => :'String',
        :'code' => :'String',
        :'accounting_employee_account' => :'String',
        :'accounting_charge_account' => :'String',
        :'two_factor_active' => :'BOOLEAN',
        :'role' => :'String',
        :'expense_type' => :'String',
        :'status' => :'String',
        :'auto_check_rebilling' => :'BOOLEAN',
        :'use_km_expenses' => :'BOOLEAN',
        :'use_manual_expenses' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'firstname')
        self.firstname = attributes[:'firstname']
      end

      if attributes.has_key?(:'lastname')
        self.lastname = attributes[:'lastname']
      end

      if attributes.has_key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.has_key?(:'locale')
        self.locale = attributes[:'locale']
      end

      if attributes.has_key?(:'birthdate')
        self.birthdate = attributes[:'birthdate']
      end

      if attributes.has_key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.has_key?(:'position')
        self.position = attributes[:'position']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.has_key?(:'confirmed_at')
        self.confirmed_at = attributes[:'confirmed_at']
      end

      if attributes.has_key?(:'archived_at')
        self.archived_at = attributes[:'archived_at']
      end

      if attributes.has_key?(:'direct_manager_ids')
        if (value = attributes[:'direct_manager_ids']).is_a?(Array)
          self.direct_manager_ids = value
        end
      end

      if attributes.has_key?(:'company_id')
        self.company_id = attributes[:'company_id']
      end

      if attributes.has_key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.has_key?(:'analytic_code')
        self.analytic_code = attributes[:'analytic_code']
      end

      if attributes.has_key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.has_key?(:'accounting_employee_account')
        self.accounting_employee_account = attributes[:'accounting_employee_account']
      end

      if attributes.has_key?(:'accounting_charge_account')
        self.accounting_charge_account = attributes[:'accounting_charge_account']
      end

      if attributes.has_key?(:'two_factor_active')
        self.two_factor_active = attributes[:'two_factor_active']
      end

      if attributes.has_key?(:'role')
        self.role = attributes[:'role']
      end

      if attributes.has_key?(:'expense_type')
        self.expense_type = attributes[:'expense_type']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'auto_check_rebilling')
        self.auto_check_rebilling = attributes[:'auto_check_rebilling']
      end

      if attributes.has_key?(:'use_km_expenses')
        self.use_km_expenses = attributes[:'use_km_expenses']
      end

      if attributes.has_key?(:'use_manual_expenses')
        self.use_manual_expenses = attributes[:'use_manual_expenses']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      locale_validator = EnumAttributeValidator.new('String', ['fr', 'en'])
      return false unless locale_validator.valid?(@locale)
      role_validator = EnumAttributeValidator.new('String', ['user', 'accountant', 'admin'])
      return false unless role_validator.valid?(@role)
      expense_type_validator = EnumAttributeValidator.new('String', ['professional_expense', 'personal_expense'])
      return false unless expense_type_validator.valid?(@expense_type)
      status_validator = EnumAttributeValidator.new('String', ['archived', 'not_confirmed', 'enabled', 'disabled'])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] locale Object to be assigned
    def locale=(locale)
      validator = EnumAttributeValidator.new('String', ['fr', 'en'])
      unless validator.valid?(locale)
        fail ArgumentError, 'invalid value for "locale", must be one of #{validator.allowable_values}.'
      end
      @locale = locale
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] role Object to be assigned
    def role=(role)
      validator = EnumAttributeValidator.new('String', ['user', 'accountant', 'admin'])
      unless validator.valid?(role)
        fail ArgumentError, 'invalid value for "role", must be one of #{validator.allowable_values}.'
      end
      @role = role
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expense_type Object to be assigned
    def expense_type=(expense_type)
      validator = EnumAttributeValidator.new('String', ['professional_expense', 'personal_expense'])
      unless validator.valid?(expense_type)
        fail ArgumentError, 'invalid value for "expense_type", must be one of #{validator.allowable_values}.'
      end
      @expense_type = expense_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ['archived', 'not_confirmed', 'enabled', 'disabled'])
      unless validator.valid?(status)
        fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          email == o.email &&
          firstname == o.firstname &&
          lastname == o.lastname &&
          address == o.address &&
          locale == o.locale &&
          birthdate == o.birthdate &&
          phone == o.phone &&
          position == o.position &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          confirmed_at == o.confirmed_at &&
          archived_at == o.archived_at &&
          direct_manager_ids == o.direct_manager_ids &&
          company_id == o.company_id &&
          active == o.active &&
          analytic_code == o.analytic_code &&
          code == o.code &&
          accounting_employee_account == o.accounting_employee_account &&
          accounting_charge_account == o.accounting_charge_account &&
          two_factor_active == o.two_factor_active &&
          role == o.role &&
          expense_type == o.expense_type &&
          status == o.status &&
          auto_check_rebilling == o.auto_check_rebilling &&
          use_km_expenses == o.use_km_expenses &&
          use_manual_expenses == o.use_manual_expenses
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, email, firstname, lastname, address, locale, birthdate, phone, position, created_at, updated_at, confirmed_at, archived_at, direct_manager_ids, company_id, active, analytic_code, code, accounting_employee_account, accounting_charge_account, two_factor_active, role, expense_type, status, auto_check_rebilling, use_km_expenses, use_manual_expenses].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = Mooncard.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
