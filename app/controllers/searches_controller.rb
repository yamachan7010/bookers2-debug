class SearchesController < ApplicationController

  def search
    @model = Book
    @word = params[:content]
    @books = Book.where("category LIKE ?","%#{@word}%")
    render "searches/search"
  end
end
