class Book < ApplicationRecord
    validates_presence_of :title
    validates_presence_of :author
    validates_presence_of :genre
    validates_presence_of :price
    validates_presence_of :published_date
end
