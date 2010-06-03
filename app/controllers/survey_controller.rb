class SurveyController < ApplicationController
  def index
    @person = Person.new(params[:person])
    @questions = Question.find(:all, :include => [:answers])
    
    if request.post? && params[:question]
      @person.ip_address = request.remote_ip
      @person.user_agent = request.headers["HTTP_USER_AGENT"]
      @person.save

      params[:question].each do |key, value|
        Vote.create(:question_id => key, :answer_id => value, :year => 2009, :person => @person)
      end

      redirect_to :action => "finished"
    end
  end
  
  def stats
    @people = Person.find(:all, :include => {:answers => :question})
    render :layout => false
  end
end
