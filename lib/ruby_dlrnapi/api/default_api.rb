=begin
#DLRN API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module RubyDlrnapi
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get a detailed overview of the CI reports for a specific repo, with optional filtering. 
    # @param commit_hash Filter on this commit hash.
    # @param distro_hash Filter on this distro hash.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :success If set filter for successful/failed CI votes
    # @return [nil]
    def api_civotes_detail_html_get(commit_hash, distro_hash, opts = {})
      api_civotes_detail_html_get_with_http_info(commit_hash, distro_hash, opts)
      return nil
    end

    # 
    # Get a detailed overview of the CI reports for a specific repo, with optional filtering. 
    # @param commit_hash Filter on this commit hash.
    # @param distro_hash Filter on this distro hash.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :success If set filter for successful/failed CI votes
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def api_civotes_detail_html_get_with_http_info(commit_hash, distro_hash, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.api_civotes_detail_html_get ..."
      end
      # verify the required parameter 'commit_hash' is set
      if @api_client.config.client_side_validation && commit_hash.nil?
        fail ArgumentError, "Missing the required parameter 'commit_hash' when calling DefaultApi.api_civotes_detail_html_get"
      end
      # verify the required parameter 'distro_hash' is set
      if @api_client.config.client_side_validation && distro_hash.nil?
        fail ArgumentError, "Missing the required parameter 'distro_hash' when calling DefaultApi.api_civotes_detail_html_get"
      end
      # resource path
      local_var_path = "/api/civotes_detail.html"

      # query parameters
      query_params = {}
      query_params[:'commit_hash'] = commit_hash
      query_params[:'distro_hash'] = distro_hash
      query_params[:'success'] = opts[:'success'] if !opts[:'success'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#api_civotes_detail_html_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get an overview of the CI reports. 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def api_civotes_html_get(opts = {})
      api_civotes_html_get_with_http_info(opts)
      return nil
    end

    # 
    # Get an overview of the CI reports. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def api_civotes_html_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.api_civotes_html_get ..."
      end
      # resource path
      local_var_path = "/api/civotes.html"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#api_civotes_html_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the last tested repo since a specific time.  If a ``job_id`` is specified, the order of precedence for the repo returned is: - The last tested repo within that timeframe for that CI job. - The last tested repo within that timeframe for any CI job, so we can have   several CIs converge on a single repo. - The last \"consistent\" repo, if no repo has been tested in the timeframe.  If ``sequential_mode`` is set to true, a different algorithm is used. Another parameter ``previous_job_id`` needs to be specified, and the order of precedence for the repo returned is:  - The last tested repo within that timeframe for the CI job described by ``previous_job_id``. - If no repo for ``previous_job_id`` is found, an error will be returned  The sequential mode is meant to be used by CI pipelines, where a CI (n) job needs to use the same repo tested by CI (n-1). 
    # @param params The JSON params to post
    # @param [Hash] opts the optional parameters
    # @return [Repo]
    def api_last_tested_repo_get(params, opts = {})
      data, _status_code, _headers = api_last_tested_repo_get_with_http_info(params, opts)
      return data
    end

    # 
    # Get the last tested repo since a specific time.  If a &#x60;&#x60;job_id&#x60;&#x60; is specified, the order of precedence for the repo returned is: - The last tested repo within that timeframe for that CI job. - The last tested repo within that timeframe for any CI job, so we can have   several CIs converge on a single repo. - The last \&quot;consistent\&quot; repo, if no repo has been tested in the timeframe.  If &#x60;&#x60;sequential_mode&#x60;&#x60; is set to true, a different algorithm is used. Another parameter &#x60;&#x60;previous_job_id&#x60;&#x60; needs to be specified, and the order of precedence for the repo returned is:  - The last tested repo within that timeframe for the CI job described by &#x60;&#x60;previous_job_id&#x60;&#x60;. - If no repo for &#x60;&#x60;previous_job_id&#x60;&#x60; is found, an error will be returned  The sequential mode is meant to be used by CI pipelines, where a CI (n) job needs to use the same repo tested by CI (n-1). 
    # @param params The JSON params to post
    # @param [Hash] opts the optional parameters
    # @return [Array<(Repo, Fixnum, Hash)>] Repo data, response status code and response headers
    def api_last_tested_repo_get_with_http_info(params, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.api_last_tested_repo_get ..."
      end
      # verify the required parameter 'params' is set
      if @api_client.config.client_side_validation && params.nil?
        fail ArgumentError, "Missing the required parameter 'params' when calling DefaultApi.api_last_tested_repo_get"
      end
      # resource path
      local_var_path = "/api/last_tested_repo"

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
      post_body = @api_client.object_to_http_body(params)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Repo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#api_last_tested_repo_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the last tested repo since a specific time (optionally for a CI job), and add an \"in progress\" entry in the CI job table for this.  If a job_id is specified, the order of precedence for the repo returned is:  - The last tested repo within that timeframe for that CI job. - The last tested repo within that timeframe for any CI job, so we can have   several CIs converge on a single repo. - The last \"consistent\" repo, if no repo has been tested in the timeframe.  If ``sequential_mode`` is set to true, a different algorithm is used. Another parameter ``previous_job_id`` needs to be specified, and the order of precedence for the repo returned is:  - The last tested repo within that timeframe for the CI job described by   ``previous_job_id``. - If no repo for ``previous_job_id`` is found, an error will be returned  The sequential mode is meant to be used by CI pipelines, where a CI (n) job needs to use the same repo tested by CI (n-1). 
    # @param params The JSON params to post
    # @param [Hash] opts the optional parameters
    # @return [Repo]
    def api_last_tested_repo_post(params, opts = {})
      data, _status_code, _headers = api_last_tested_repo_post_with_http_info(params, opts)
      return data
    end

    # 
    # Get the last tested repo since a specific time (optionally for a CI job), and add an \&quot;in progress\&quot; entry in the CI job table for this.  If a job_id is specified, the order of precedence for the repo returned is:  - The last tested repo within that timeframe for that CI job. - The last tested repo within that timeframe for any CI job, so we can have   several CIs converge on a single repo. - The last \&quot;consistent\&quot; repo, if no repo has been tested in the timeframe.  If &#x60;&#x60;sequential_mode&#x60;&#x60; is set to true, a different algorithm is used. Another parameter &#x60;&#x60;previous_job_id&#x60;&#x60; needs to be specified, and the order of precedence for the repo returned is:  - The last tested repo within that timeframe for the CI job described by   &#x60;&#x60;previous_job_id&#x60;&#x60;. - If no repo for &#x60;&#x60;previous_job_id&#x60;&#x60; is found, an error will be returned  The sequential mode is meant to be used by CI pipelines, where a CI (n) job needs to use the same repo tested by CI (n-1). 
    # @param params The JSON params to post
    # @param [Hash] opts the optional parameters
    # @return [Array<(Repo, Fixnum, Hash)>] Repo data, response status code and response headers
    def api_last_tested_repo_post_with_http_info(params, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.api_last_tested_repo_post ..."
      end
      # verify the required parameter 'params' is set
      if @api_client.config.client_side_validation && params.nil?
        fail ArgumentError, "Missing the required parameter 'params' when calling DefaultApi.api_last_tested_repo_post"
      end
      # resource path
      local_var_path = "/api/last_tested_repo"

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
      post_body = @api_client.object_to_http_body(params)
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Repo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#api_last_tested_repo_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Promote a repository. This can be implemented as a local symlink creation in the DLRN worker, or any other form in the future.  Note the API will refuse to promote using promote_name=\"consistent\" or \"current\", since those are reserved keywords for DLRN. 
    # @param params The JSON params to post
    # @param [Hash] opts the optional parameters
    # @return [Promotion]
    def api_promote_post(params, opts = {})
      data, _status_code, _headers = api_promote_post_with_http_info(params, opts)
      return data
    end

    # 
    # Promote a repository. This can be implemented as a local symlink creation in the DLRN worker, or any other form in the future.  Note the API will refuse to promote using promote_name&#x3D;\&quot;consistent\&quot; or \&quot;current\&quot;, since those are reserved keywords for DLRN. 
    # @param params The JSON params to post
    # @param [Hash] opts the optional parameters
    # @return [Array<(Promotion, Fixnum, Hash)>] Promotion data, response status code and response headers
    def api_promote_post_with_http_info(params, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.api_promote_post ..."
      end
      # verify the required parameter 'params' is set
      if @api_client.config.client_side_validation && params.nil?
        fail ArgumentError, "Missing the required parameter 'params' when calling DefaultApi.api_promote_post"
      end
      # resource path
      local_var_path = "/api/promote"

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
      post_body = @api_client.object_to_http_body(params)
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Promotion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#api_promote_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get all the promotions, optionally for a specific repository or promotion name. The output will be sorted by the promotion timestamp, with the newest first, and limited to 100 results per query. 
    # @param params The JSON params to post
    # @param [Hash] opts the optional parameters
    # @return [Array<Promotion>]
    def api_promotions_get(params, opts = {})
      data, _status_code, _headers = api_promotions_get_with_http_info(params, opts)
      return data
    end

    # 
    # Get all the promotions, optionally for a specific repository or promotion name. The output will be sorted by the promotion timestamp, with the newest first, and limited to 100 results per query. 
    # @param params The JSON params to post
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Promotion>, Fixnum, Hash)>] Array<Promotion> data, response status code and response headers
    def api_promotions_get_with_http_info(params, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.api_promotions_get ..."
      end
      # verify the required parameter 'params' is set
      if @api_client.config.client_side_validation && params.nil?
        fail ArgumentError, "Missing the required parameter 'params' when calling DefaultApi.api_promotions_get"
      end
      # resource path
      local_var_path = "/api/promotions"

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
      post_body = @api_client.object_to_http_body(params)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Promotion>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#api_promotions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Import a commit built by another instance. This API call mimics the behavior of the ``dlrn-remote`` command, with the only exception of not being able to specify a custom rdoinfo location. 
    # @param params The JSON params to post
    # @param [Hash] opts the optional parameters
    # @return [Import]
    def api_remote_import_post(params, opts = {})
      data, _status_code, _headers = api_remote_import_post_with_http_info(params, opts)
      return data
    end

    # 
    # Import a commit built by another instance. This API call mimics the behavior of the &#x60;&#x60;dlrn-remote&#x60;&#x60; command, with the only exception of not being able to specify a custom rdoinfo location. 
    # @param params The JSON params to post
    # @param [Hash] opts the optional parameters
    # @return [Array<(Import, Fixnum, Hash)>] Import data, response status code and response headers
    def api_remote_import_post_with_http_info(params, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.api_remote_import_post ..."
      end
      # verify the required parameter 'params' is set
      if @api_client.config.client_side_validation && params.nil?
        fail ArgumentError, "Missing the required parameter 'params' when calling DefaultApi.api_remote_import_post"
      end
      # resource path
      local_var_path = "/api/remote/import"

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
      post_body = @api_client.object_to_http_body(params)
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Import')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#api_remote_import_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get all the CI reports for a specific repository. 
    # @param params The JSON params to post
    # @param [Hash] opts the optional parameters
    # @return [Array<CIVote>]
    def api_repo_status_get(params, opts = {})
      data, _status_code, _headers = api_repo_status_get_with_http_info(params, opts)
      return data
    end

    # 
    # Get all the CI reports for a specific repository. 
    # @param params The JSON params to post
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<CIVote>, Fixnum, Hash)>] Array<CIVote> data, response status code and response headers
    def api_repo_status_get_with_http_info(params, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.api_repo_status_get ..."
      end
      # verify the required parameter 'params' is set
      if @api_client.config.client_side_validation && params.nil?
        fail ArgumentError, "Missing the required parameter 'params' when calling DefaultApi.api_repo_status_get"
      end
      # resource path
      local_var_path = "/api/repo_status"

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
      post_body = @api_client.object_to_http_body(params)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<CIVote>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#api_repo_status_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get a detailed report of the commit build status, with optional filtering. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :package Filter on this package name.
    # @option opts [BOOLEAN] :success Filter on this successful/unsuccessful builds.
    # @return [nil]
    def api_report_html_get(opts = {})
      api_report_html_get_with_http_info(opts)
      return nil
    end

    # 
    # Get a detailed report of the commit build status, with optional filtering. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :package Filter on this package name.
    # @option opts [BOOLEAN] :success Filter on this successful/unsuccessful builds.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def api_report_html_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.api_report_html_get ..."
      end
      # resource path
      local_var_path = "/api/report.html"

      # query parameters
      query_params = {}
      query_params[:'package'] = opts[:'package'] if !opts[:'package'].nil?
      query_params[:'success'] = opts[:'success'] if !opts[:'success'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#api_report_html_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Report the result of a CI job. 
    # @param params The JSON params to post
    # @param [Hash] opts the optional parameters
    # @return [CIVote]
    def api_report_result_post(params, opts = {})
      data, _status_code, _headers = api_report_result_post_with_http_info(params, opts)
      return data
    end

    # 
    # Report the result of a CI job. 
    # @param params The JSON params to post
    # @param [Hash] opts the optional parameters
    # @return [Array<(CIVote, Fixnum, Hash)>] CIVote data, response status code and response headers
    def api_report_result_post_with_http_info(params, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.api_report_result_post ..."
      end
      # verify the required parameter 'params' is set
      if @api_client.config.client_side_validation && params.nil?
        fail ArgumentError, "Missing the required parameter 'params' when calling DefaultApi.api_report_result_post"
      end
      # resource path
      local_var_path = "/api/report_result"

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
      post_body = @api_client.object_to_http_body(params)
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CIVote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#api_report_result_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end