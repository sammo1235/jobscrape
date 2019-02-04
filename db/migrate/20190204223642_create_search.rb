class CreateSearch < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.string :keyword
      t.integer :user_id
      t.datetime :last_searched_at
    end
  end
end
