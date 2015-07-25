class CalenderController < ApplicationController

  def index
  	@users = User.all
  	@users.each do |user|
  	user.about = user.dob.strftime("%d-%m")
  	end
  	@user_by_dob = @users.group_by(&:about)

  	@happenings = Happening.all
  	@happenings_by_date = @happenings.group_by(&:date_created)

  	@date = params[:date] ? Date.parse(params[:date]) : Date.today
  end
end
