module V1
  class Surveys < Grape::API
    include V1::Defaults

    include Grape::Rails::Cache

    resources :surveys, serializer: SurveySerializer do
      desc "grab a survey"
      get '/:name' do
        survey = Survey.where(:slug => params[:name]).first
        cache(key: "survey::#{survey.id}", etag: survey.updated_at, expires_in: 2.days) do
          survey
        end
      end
    end
  end
end
