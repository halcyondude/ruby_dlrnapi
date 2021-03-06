=begin
#DLRN API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

# Common files
require 'ruby_dlrnapi/api_client'
require 'ruby_dlrnapi/api_error'
require 'ruby_dlrnapi/version'
require 'ruby_dlrnapi/configuration'

# Models
require 'ruby_dlrnapi/models/ci_vote'
require 'ruby_dlrnapi/models/import'
require 'ruby_dlrnapi/models/params'
require 'ruby_dlrnapi/models/params_1'
require 'ruby_dlrnapi/models/params_2'
require 'ruby_dlrnapi/models/params_3'
require 'ruby_dlrnapi/models/params_4'
require 'ruby_dlrnapi/models/params_5'
require 'ruby_dlrnapi/models/promotion'
require 'ruby_dlrnapi/models/promotion_query'
require 'ruby_dlrnapi/models/repo'

# APIs
require 'ruby_dlrnapi/api/default_api'

module RubyDlrnapi
  class << self
    # Customize default settings for the SDK using block.
    #   RubyDlrnapi.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
