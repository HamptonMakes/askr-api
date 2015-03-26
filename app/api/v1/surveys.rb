module V1
  class Surveys < Grape::API
    include V1::Defaults

    resources :surveys, :serializer => SurveySerializer do
      desc "grab a survey"
      get '/:name' do
        survey = Survey.where(:slug => params[:name]).first
        cache("survey:#{survey.id}", etag: survey.updated_at, expires_in: 2.days) do
          survey
        end
      end
    end
  end
end
