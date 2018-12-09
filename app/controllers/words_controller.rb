class WordsController < ApplicationController
  def index
    @words = Word.all
  end
  
  def new
    @word = Word.new
  end
  
  def create
    Word.create(word_params)
    redirect_to new_word_path
  end
  
  def show
    @word = Word.find(params[:id])
  end
  
  
  private

  def word_params
    params.require(:word).permit(:content)
  end
end
