module V1
  class Base < Grape::API
    include V1::Defaults
    include ActionController::Serialization

    mount V1::Surveys

    add_swagger_documentation(
      api_version: "v1",
      base_path: "api",
      hide_documentation_path: true,
      mount_path: "/swagger_doc",
      hide_format: true
    )
  end
end
