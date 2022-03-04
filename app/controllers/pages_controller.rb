class PagesController < ApplicationController

  before_action :require_user
  before_action :user_has_no_profile

  def home
    @event = Event.new
    @events = Event.all
    @today_date = Date.today
  end


end
