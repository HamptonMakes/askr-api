module V1
  class Surveys < Grape::API
    include V1::Defaults

    include Grape::Rails::Cache

    resources :surveys do
      desc "grab a survey"
      get '/:name' do
        content_type 'application/javascript'
        survey = Survey.where(:slug => params[:name]).first
        cache(key: "survey::#{survey.id}", etag: survey.updated_at, expires_in: 2.days) do
          survey
        end
      end
    end
  end
end
