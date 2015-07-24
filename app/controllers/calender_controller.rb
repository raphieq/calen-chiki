class CalenderController < ApplicationController
  def index
  	@happenings = Happening.all
  	@happenings_by_date = @happenings.group_by(&:date_created)
  	@date = params[:date] ? Date.parse(params[:date]) : Date.today

  end
end
