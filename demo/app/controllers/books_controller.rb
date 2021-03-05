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
    @book = Book.new(params.require(:book).permit(:title, :author, :price, :genre, :published_date))
    if @book.save
      redirect_to(books_path, notice: 'Book created successfully.')
    else
      redirect_to(new_book_path, notice: 'Book not created successfully.')
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(params.require(:book).permit(:title, :author, :price, :genre, :published_date))
      redirect_to(book_path(@book.id), notice: 'Book edited successfully.')
    else
      redirect_to(edit_book_path(@book.id), notice: 'Book not edited successfully.')
    end
  end

  def delete
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      redirect_to(books_path, notice: 'Book deleted successfully.')
    else
      redirect_to(delete_book_path(@book.id), notice: 'Book not deleted successfully.')
    end
  end
end
