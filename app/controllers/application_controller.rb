class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def end_time
    @end_time ||= Date.parse("Feb 15, 2015").to_time
  end
  helper_method :end_time

  def results_year
    2014
  end
  helper_method :results_year

  def survey_open?
    @survey_open ||= (end_time > Time.now)
  end
  helper_method :survey_open?
end
