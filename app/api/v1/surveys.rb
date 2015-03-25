module V1
  class Surveys < Grape::API
    include V1::Defaults

    resources :surveys, :serializer => SurveySerializer do
      desc "grab a survey"
      get '/:name' do
        Survey.find(:slug => params[:name])
      end
    end
  end
end
