class CreateVisitorEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :visitor_entries do |t|
      t.date :visit_date
      t.integer :user_id
      t.integer :book_id

      t.timestamps
    end
  end
end
