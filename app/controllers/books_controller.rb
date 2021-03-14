class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    if @book.save
      redirect_to books_path
    else
      render :new, notice: "Book could not be saved."
    end
  end

  private
  def book_params
     params.require(:book).permit(:title, :author, :description, :available_pages, :cover_image, :initially_uploaded_by)
  end
end
