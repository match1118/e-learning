class WordsController < ApplicationController
  
  def new
  end
  
  def create
  end
  
  def index
    category = Category.find(params[:category_id])
    @word = category.words.build
    @wordchoices = Wordchoice.all
  end
  
  
end
