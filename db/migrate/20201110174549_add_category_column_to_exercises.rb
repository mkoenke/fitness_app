class AddCategoryColumnToExercises < ActiveRecord::Migration[6.0]
  def change
    add_column :exercises, :category, :string
  end
end
