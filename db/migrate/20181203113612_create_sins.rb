class CreateSins < ActiveRecord::Migration[5.2]
  def change
    create_table :sins do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.integer :sin_id

      t.timestamps
    end
  end
end
