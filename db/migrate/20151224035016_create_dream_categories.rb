class CreateDreamCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :dream_categories do |t|
      t.references :category, index: true, foreign_key: true
      t.references :dream, index: true, foreign_key: true

      t.timestamps
    end
  end
end
