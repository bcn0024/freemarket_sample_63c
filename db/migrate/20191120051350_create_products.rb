class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string         :name, null: false
      t.string         :description, null: false
      t.string         :postage, null: false
      # t.string         :delibery, null: false
      t.integer        :status, null: false
      t.string         :region,null: false
      t.string         :arrival_date,null: false
      t.string         :price,null: false
      t.string         :size
      t.integer        :user_id,null: false, foreign_key: true
      t.integer        :brand_id, foreign_key: true, optional:true
      t.integer        :category_id,null: false, foreign_key: true
      t.timestamps
    end
  end
end
