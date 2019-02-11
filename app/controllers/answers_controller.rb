class AnswersController < ApplicationController
  def new
    @category = Category.new(find_category)
    @word = @category.words.new(word_params)
    4.times { @word.wordchoices.build }
  end
  
  def create
    @category = Category.new(find_category)
    @word = @category.words.new(word_params)
    redirect_to new_lesson_answer_path
  end
  
  
  private
  
  def find_category
    @category = Category.new(params[:category_id])
  end
  
  def word_params
    params.require(:word).permit(:name, wordchoices_attributes: [:id, :name, :correct])
  end  
end
