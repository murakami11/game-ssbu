class AddImageToCharacters < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :image, :string
  end
end
