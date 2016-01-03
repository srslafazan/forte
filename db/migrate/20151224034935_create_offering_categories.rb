class CreateOfferingCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :offering_categories do |t|
      
      t.references :offering, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps
    end
  end
end
