class AddLocLatitudeToPhoto < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :loc_latitude, :float
  end
end
