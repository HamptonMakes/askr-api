module V1
  class Surveys < Grape::API
    include V1::Defaults

    resources :surveys do
      desc "list all surveys"
      get '/' do
        Survey.all
      end
    end
  end
end
