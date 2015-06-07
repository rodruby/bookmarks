class BooksController < ApplicationController

  def index
    @books = Book.order(rank_this_week: :asc).all
  end

  def show
    @book = Book.find(params[:id])
    @reviews = @book.reviews
  end

end
