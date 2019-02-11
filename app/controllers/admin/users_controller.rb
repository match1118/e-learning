class Admin::UsersController < ApplicationController
  before_action :admin_user 
  
  def index
    @users = User.paginate(page: params[:page])
  end
  
end
