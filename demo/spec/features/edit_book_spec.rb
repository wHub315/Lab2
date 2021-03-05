#spec/features/edit_book_spec.rb

require "rails_helper"

#Acceptance testing, making sure user can edit a book with valid inputs, and cannot edit one without valid inputs
RSpec.describe "Editing a book", type: :feature do
    scenario "valid inputs" do
        book = Book.create(title: "Elf's world", author: "Mike", price: "30", genre: "Fantasy", published_date: "2020")
        visit edit_book_path(book.id)
        fill_in "book[title]", with: "Bizzarre world"
        click_on "Update Book"
        expect(page).to have_content("Bizzarre world")
    end
    scenario "no title given" do
        book = Book.create(title: "Elf's world", author: "Mike", price: "30", genre: "Fantasy", published_date: "2020")
        visit edit_book_path(book.id)
        fill_in "book[title]", with: nil
        click_on "Update Book"
        expect(page).to have_content("Book not edited successfully.")
    end
end