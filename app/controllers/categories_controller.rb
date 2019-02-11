class CategoriesController < ApplicationController
  
  before_action :logged_in_user
  before_action :admin_user
  
  def index
    @categories = Category.all
  end
  
  def new
    @category = Category.new
  end
  
  def show
    @category = Category.find(params[:id])
  end
  
  def create
  end

  def edit
  end
end
