#spec/features/create_book_spec.rb

require "rails_helper"

#Acceptance testing, making sure user can create a book with valid inputs, and cannot create one without valid inputs
RSpec.describe "Creating a book", type: :feature do
    scenario "valid inputs" do
        visit new_book_path
        fill_in "book[title]", with: "Story"
        fill_in "book[author]", with: "Joe"
        fill_in "book[price]", with: "20"
        find("#book_genre option:first-of-type").select_option
        find("#book_published_date option:first-of-type").select_option
        click_on "Submit Book"
        expect(page).to have_content("Story")
    end
    scenario "no title given" do
        visit new_book_path
        fill_in "book[author]", with: "Joe"
        fill_in "book[price]", with: "20"
        find("#book_genre option:first-of-type").select_option
        find("#book_published_date option:first-of-type").select_option
        click_on "Submit Book"
        expect(page).to have_content("Book not created successfully.")
    end
end