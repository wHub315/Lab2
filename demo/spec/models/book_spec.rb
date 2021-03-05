# spec/models/book_spec.rb

require 'rails_helper'

#Unit testing
RSpec.describe Book, :type => :model do 
    subject {
        described_class.new(
            title: "Example",
            author: "Author",
            genre: "Fantasy",
            price: 10,
            published_date: "yesterday")
    }
    it "is valid with valid attributes" do
        expect(subject).to be_valid
    end
    it "is not valid without a title" do
        subject.title = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a author" do
        subject.author = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a genre" do
        subject.genre = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a price" do
        subject.price = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a published_date" do
        subject.published_date = nil
        expect(subject).to_not be_valid
    end
end
    