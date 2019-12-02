class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string    :card_number
      t.string    :year
      t.string    :month
      t.string    :safity_number
      t.integer   :user_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
