class AddImageToSins < ActiveRecord::Migration[5.2]
  def change
    add_column :sins, :image, :string
  end
end
