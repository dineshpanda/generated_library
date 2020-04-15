class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :img
      t.string :loc
      t.integer :book_id

      t.timestamps
    end
  end
end
