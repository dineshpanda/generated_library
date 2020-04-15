class AddLocLongitudeToPhoto < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :loc_longitude, :float
  end
end
