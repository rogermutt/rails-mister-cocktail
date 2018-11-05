class AddDifficultyToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :difficulty, :string
  end
end
