class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string   :postal_code
      t.string   :prefectures
      t.string   :municipalities
      t.string   :address
      t.string   :building
      t.integer   :user_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
