class Admin::WordsController < ApplicationController
  
  def index
    category = Category.find(params[:category_id])
    @word = category.words.build
    @wordchoices = Wordchoice.all
  end
  
  def new
    category = Category.find(params[:category_id])
    @word = category.words.build
    4.times { @word.wordchoices.build }
  end
  
  def create
    category = Category.find(params[:category_id])
    @word = category.words.new(word_params)
    if @word.save
      flash[:success] = "Successfully Create!"
      redirect_to admin_category_words_path(@word)
    else
      render 'new'
    end
  end
  
  def show
    @word = Word.find(params[:id])
  end
  
  def edit
    @word = Word.find(params[:id])
  end
  
  def update
    @word = Word.find(params[:id])
    if @word.update_attributes(word_params)
      flash[:success] = "Word Updated!"
      redirect_to admin_category_words_path
    else
      render 'edit'
    end
  end
  
  
  private
  
  def word_params
    params.require(:word).permit(:name,
                                 wordchoices_attributes: [:id, :name, :correct])
  end
end