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
  class WebhooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # @param webhook 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create(webhook, opts = {})
      create_with_http_info(webhook, opts)
      nil
    end

    # @param webhook 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_with_http_info(webhook, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.create ...'
      end
      # verify the required parameter 'webhook' is set
      if @api_client.config.client_side_validation && webhook.nil?
        fail ArgumentError, "Missing the required parameter 'webhook' when calling WebhooksApi.create"
      end
      # resource path
      local_var_path = '/api/v3/webhooks'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(webhook)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete(id, opts = {})
      delete_with_http_info(id, opts)
      nil
    end

    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhooksApi.delete"
      end
      # resource path
      local_var_path = '/api/v3/webhooks/{id}'.sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Webhook]
    def find(id, opts = {})
      data, _status_code, _headers = find_with_http_info(id, opts)
      data
    end

    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Webhook, Fixnum, Hash)>] Webhook data, response status code and response headers
    def find_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.find ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhooksApi.find"
      end
      # resource path
      local_var_path = '/api/v3/webhooks/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :auth_names => auth_names,
        :return_type => 'Webhook')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#find\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page of results to fetch. (default to 1)
    # @option opts [Integer] :per_page Number of results to return per page.
    # @return [Array<Webhook>]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page of results to fetch.
    # @option opts [Integer] :per_page Number of results to return per page.
    # @return [Array<(Array<Webhook>, Fixnum, Hash)>] Array<Webhook> data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.list ...'
      end
      # resource path
      local_var_path = '/api/v3/webhooks'

      # query parameters
      query_params = {}
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
        :return_type => 'Array<Webhook>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param id 
    # @param webhook 
    # @param [Hash] opts the optional parameters
    # @return [Webhook]
    def put_api_v3_webhooks_id(id, webhook, opts = {})
      data, _status_code, _headers = put_api_v3_webhooks_id_with_http_info(id, webhook, opts)
      data
    end

    # @param id 
    # @param webhook 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Webhook, Fixnum, Hash)>] Webhook data, response status code and response headers
    def put_api_v3_webhooks_id_with_http_info(id, webhook, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.put_api_v3_webhooks_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhooksApi.put_api_v3_webhooks_id"
      end
      # verify the required parameter 'webhook' is set
      if @api_client.config.client_side_validation && webhook.nil?
        fail ArgumentError, "Missing the required parameter 'webhook' when calling WebhooksApi.put_api_v3_webhooks_id"
      end
      # resource path
      local_var_path = '/api/v3/webhooks/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(webhook)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Webhook')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#put_api_v3_webhooks_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
