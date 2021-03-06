=begin
#Mooncard API

#Access Mooncard data from anywhere

OpenAPI spec version: 3.0.0
Contact: hello@mooncard.co
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module Mooncard
  class AccountMovementsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def find(id, opts = {})
      find_with_http_info(id, opts)
      nil
    end

    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def find_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountMovementsApi.find ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AccountMovementsApi.find"
      end
      # resource path
      local_var_path = '/api/v3/account_movements/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountMovementsApi#find\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param account_id account_id is required
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_movement_search_change_real_gteq change_real &gt;&#x3D; ?
    # @option opts [String] :account_movement_search_change_real_lteq change_real &lt;&#x3D; ?
    # @option opts [String] :account_movement_search_change_available_gteq change_available &gt;&#x3D; ?
    # @option opts [String] :account_movement_search_change_available_lteq change_available &lt;&#x3D; ?
    # @option opts [String] :account_movement_search_description_cont description &#x3D; %?%
    # @option opts [String] :account_movement_search_transaction_date_gteq transaction_date &gt;&#x3D; ?
    # @option opts [String] :account_movement_search_transaction_date_lteq transaction_date &lt;&#x3D; ?
    # @option opts [String] :account_movement_search_transaction_status_in transaction_status IN (?)
    # @option opts [String] :account_movement_search_transaction_type_in transaction_type IN (?)
    # @option opts [String] :account_movement_search_token_in token IN (?)
    # @option opts [String] :account_movement_search_order_by Select which field you want to order the results by (default to transaction_date)
    # @option opts [String] :account_movement_search_order Select whether the results should be sorted in ascending or descending order (default to desc)
    # @option opts [Integer] :page Page of results to fetch. (default to 1)
    # @option opts [Integer] :per_page Number of results to return per page.
    # @return [Array<Movement>]
    def list(account_id, opts = {})
      data, _status_code, _headers = list_with_http_info(account_id, opts)
      data
    end

    # @param account_id account_id is required
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_movement_search_change_real_gteq change_real &gt;&#x3D; ?
    # @option opts [String] :account_movement_search_change_real_lteq change_real &lt;&#x3D; ?
    # @option opts [String] :account_movement_search_change_available_gteq change_available &gt;&#x3D; ?
    # @option opts [String] :account_movement_search_change_available_lteq change_available &lt;&#x3D; ?
    # @option opts [String] :account_movement_search_description_cont description &#x3D; %?%
    # @option opts [String] :account_movement_search_transaction_date_gteq transaction_date &gt;&#x3D; ?
    # @option opts [String] :account_movement_search_transaction_date_lteq transaction_date &lt;&#x3D; ?
    # @option opts [String] :account_movement_search_transaction_status_in transaction_status IN (?)
    # @option opts [String] :account_movement_search_transaction_type_in transaction_type IN (?)
    # @option opts [String] :account_movement_search_token_in token IN (?)
    # @option opts [String] :account_movement_search_order_by Select which field you want to order the results by
    # @option opts [String] :account_movement_search_order Select whether the results should be sorted in ascending or descending order
    # @option opts [Integer] :page Page of results to fetch.
    # @option opts [Integer] :per_page Number of results to return per page.
    # @return [Array<(Array<Movement>, Fixnum, Hash)>] Array<Movement> data, response status code and response headers
    def list_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountMovementsApi.list ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountMovementsApi.list"
      end
      if @api_client.config.client_side_validation && opts[:'account_movement_search_order_by'] && !['transaction_date'].include?(opts[:'account_movement_search_order_by'])
        fail ArgumentError, 'invalid value for "account_movement_search_order_by", must be one of transaction_date'
      end
      if @api_client.config.client_side_validation && opts[:'account_movement_search_order'] && !['asc', 'desc'].include?(opts[:'account_movement_search_order'])
        fail ArgumentError, 'invalid value for "account_movement_search_order", must be one of asc, desc'
      end
      # resource path
      local_var_path = '/api/v3/account_movements'

      # query parameters
      query_params = {}
      query_params[:'account_id'] = account_id
      query_params[:'account_movement_search[change_real_gteq]'] = opts[:'account_movement_search_change_real_gteq'] if !opts[:'account_movement_search_change_real_gteq'].nil?
      query_params[:'account_movement_search[change_real_lteq]'] = opts[:'account_movement_search_change_real_lteq'] if !opts[:'account_movement_search_change_real_lteq'].nil?
      query_params[:'account_movement_search[change_available_gteq]'] = opts[:'account_movement_search_change_available_gteq'] if !opts[:'account_movement_search_change_available_gteq'].nil?
      query_params[:'account_movement_search[change_available_lteq]'] = opts[:'account_movement_search_change_available_lteq'] if !opts[:'account_movement_search_change_available_lteq'].nil?
      query_params[:'account_movement_search[description_cont]'] = opts[:'account_movement_search_description_cont'] if !opts[:'account_movement_search_description_cont'].nil?
      query_params[:'account_movement_search[transaction_date_gteq]'] = opts[:'account_movement_search_transaction_date_gteq'] if !opts[:'account_movement_search_transaction_date_gteq'].nil?
      query_params[:'account_movement_search[transaction_date_lteq]'] = opts[:'account_movement_search_transaction_date_lteq'] if !opts[:'account_movement_search_transaction_date_lteq'].nil?
      query_params[:'account_movement_search[transaction_status_in]'] = opts[:'account_movement_search_transaction_status_in'] if !opts[:'account_movement_search_transaction_status_in'].nil?
      query_params[:'account_movement_search[transaction_type_in]'] = opts[:'account_movement_search_transaction_type_in'] if !opts[:'account_movement_search_transaction_type_in'].nil?
      query_params[:'account_movement_search[token_in]'] = opts[:'account_movement_search_token_in'] if !opts[:'account_movement_search_token_in'].nil?
      query_params[:'account_movement_search[order_by]'] = opts[:'account_movement_search_order_by'] if !opts[:'account_movement_search_order_by'].nil?
      query_params[:'account_movement_search[order]'] = opts[:'account_movement_search_order'] if !opts[:'account_movement_search_order'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Movement>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountMovementsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
