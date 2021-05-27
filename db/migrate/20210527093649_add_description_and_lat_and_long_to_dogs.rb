class AddDescriptionAndLatAndLongToDogs < ActiveRecord::Migration[6.1]
  def change
    add_column :dogs, :description, :text
    add_column :dogs, :latitude, :float
    add_column :dogs, :longitude, :float
  end
end
