class CreateAuthorBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :author_books do |t|
      t.references :author, foreign_key: true
      t.references :book, foreign_key: true
      t.timestamps
    end
  end
end
