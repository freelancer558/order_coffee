class Admin::DashboardController < ApplicationController
  layout 'admin'
  def index
    @users = User.all
    @status = Status.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end
end
