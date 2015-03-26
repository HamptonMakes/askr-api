module V1
  class Surveys < Grape::API
    include V1::Defaults

    include Grape::Rails::Cache

    resources :surveys do
      desc "grab a survey"
      get '/:name' do
        survey = Survey.where(:slug => params[:name]).first
        cache(key: "s::#{survey.slug}", expires_in: 2.days) do
          SurveySerializer.new(survey)
        end
      end
    end
  end
end
