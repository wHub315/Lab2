class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.float :price
      t.string :published_date

      t.timestamps
    end
  end
end
