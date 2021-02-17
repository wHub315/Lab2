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
    if !@book.save
      render('new')
    else
      redirect_to(books_path)
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if !@book.update(params.require(:book).permit(:title, :author, :price, :genre, :published_date))
      render('edit')
    else
      redirect_to(book_path(@book))
    end
  end

  def delete
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    if !@book.destroy
      render('delete')
    else
      redirect_to(books_path)
    end
  end
end
