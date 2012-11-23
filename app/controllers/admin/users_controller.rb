class Admin::UsersController < ApplicationController
  layout 'admin'
  def index
    @users = User.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def show
    @users = Coff.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @users }
    end
  end
end
