module V1
  class Surveys < Grape::API
    include V1::Defaults

    resources :surveys, :each_serializer => SurveySerializer do
      desc "list all surveys"
      get '/' do
        Survey.all
      end
    end
  end
end
