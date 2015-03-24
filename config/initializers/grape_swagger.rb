GrapeSwaggerRails.options.url = "/api/swagger_doc"
GrapeSwaggerRails.options.app_name = "Survey"
GrapeSwaggerRails.options.api_auth     = 'bearer' # Or 'bearer' for OAuth
GrapeSwaggerRails.options.api_key_name = 'Authorization'
GrapeSwaggerRails.options.api_key_type = 'header'
if Rails.env.development?
  GrapeSwaggerRails.options.app_url = "http://localhost:3000"
  #GrapeSwaggerRails.options.api_key_name = "hcatlin:sx8F9GByHyXQdQZuE2Dw"
else
  GrapeSwaggerRails.options.app_url = "https://api.survey.hamptoncatlin.com"
end
