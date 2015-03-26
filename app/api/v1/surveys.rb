module V1
  class Surveys < Grape::API
    include V1::Defaults

    resources :surveys, :serializer => SurveySerializer do
      desc "grab a survey"
      get '/:name' do
        Survey.where(:slug => params[:name]).first
      end
    end
  end
end
