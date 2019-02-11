class Admin::CategoriesController < ApplicationController
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
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "Successfully Create!"
      redirect_to new_admin_category_word_path(@category)
    else
      render 'new'
    end
  end
  
  def edit
    @category = Category.find(params[:id])
  end
  
  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      flash[:success] = "Category Updated!"
      redirect_to admin_categories_path
    else
      render 'edit'
    end
  end
  
  def destroy
    Category.find(params[:id]).destroy
    flash[:success] = "Successfully deleted"
    redirect_to admin_categories_path
  end
  
  
  private
  
  def category_params
    params.require(:category).permit(:title, :description)
  end
end
