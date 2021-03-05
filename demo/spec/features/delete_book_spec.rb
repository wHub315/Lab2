#spec/features/delete_book_spec.rb

require "rails_helper"

#Integration testing, making sure user sees proper flash message upon deleting a book
RSpec.describe "Deleting a book", type: :feature do
    scenario "deleting a book" do
        book = Book.create(title: "Deleted book", author: "Dude", price: "10", genre: "Fantasy", published_date: "2020")
        visit delete_book_path(book.id)
        click_on "Delete Book"
        expect(page).to have_content("Book deleted successfully.")
    end
end