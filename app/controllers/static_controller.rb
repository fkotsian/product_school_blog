class StaticController < ApplicationController
  # create a new homepage action
  skip_before_action :authenticate_user!, only: [:home]
  
  def home
    # will fetch View: app/views/static/home.html.erb
  end
end
