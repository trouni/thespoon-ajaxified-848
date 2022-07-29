class AddDescriptionAndCategoryToRestaurant < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :description, :string
  end
end
