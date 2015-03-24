module V1
  module Defaults
    extend ActiveSupport::Concern

    included do
      version 'v1', using: :header, vendor: 'hcatlin'
      default_format :json
      format :json
      formatter :json, Grape::Formatter::ActiveModelSerializers

      before do
      end

      helpers do
        def permitted_params
          @permitted_params ||= declared(params, include_missing: false)
        end

        def default_serializer_options
          {only: params[:only], except: params[:except]}
        end

        def logger
          Rails.logger
        end
      end
    end
  end
end
