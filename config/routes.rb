RubySurvey::Application.routes.draw do
  root :to => redirect("/docs"), only_path: false
  mount V1::Base => "/api"
  mount GrapeSwaggerRails::Engine, at: "/docs"
end
