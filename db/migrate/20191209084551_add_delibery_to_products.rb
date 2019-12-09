class AddDeliberyToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :delibery, :string
    change_column :products, :delibery, :string, null: false
  end
end
