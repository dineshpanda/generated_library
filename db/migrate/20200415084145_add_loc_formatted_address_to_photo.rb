class AddLocFormattedAddressToPhoto < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :loc_formatted_address, :string
  end
end
