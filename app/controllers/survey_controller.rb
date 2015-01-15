class SurveyController < ApplicationController
  def index
    @person = Person.new(:email_address => params[:person][:email_address]) if params[:person]
    @questions = Question.find(:all, :include => [:answers]).group_by(&:year_added)

    if survey_open? && request.post? && params[:question]
      @person.ip_address = request.remote_ip
      @person.user_agent = request.headers["HTTP_USER_AGENT"]
      @person.save

      params[:question].each do |key, value|
        Vote.create(:question_id => key, :answer_id => value, :year => Time.now.year, :person => @person)
      end

      redirect_to :action => "finished"
    else
      @people = Person.group("YEAR(created_at)").count
    end
  end

  def stats
  end

  def emails
    #@people = Person.find(:all)
  end
end
