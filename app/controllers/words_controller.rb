class WordsController < ApplicationController
  def index
  end
  
  def new
    @word = Word.new
  end
  
  def create
    Word.create(params.require(:word).permit(:content))
    redirect_to new_word_path
  end
end
