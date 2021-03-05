# spec/models/double_book_spec.rb

require 'rails_helper'

#double testing
RSpec.describe "Double test", type: :feature do
    it "Checks that two books should be able to be equalled by price" do
        book1 = Book.create(title: "Elf's world", author: "Mike", price: 10, genre: "Fantasy", published_date: "2020")
        book1.price = 10
        book = instance_double("Book", :price => 10)
        expect(book1.price).to eq(book.price)
    end
end