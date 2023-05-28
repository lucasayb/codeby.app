class HomeController < ApplicationController
  def index
    @tasks = Task.all.order(:created_at => :desc).limit(3)
  end
end
