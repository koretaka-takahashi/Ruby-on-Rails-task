class WordsController < ApplicationController
  def index
  end
  
  def new
    @word = Word.new
  end
  
  def create
    Word.create(content: params[:word][:content])
    redirect_to new_word_path
  end
end
