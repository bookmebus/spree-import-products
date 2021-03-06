class CreateProductImports < ActiveRecord::Migration[6.0]
  def change
    create_table :spree_product_imports do |t|
      t.string :file_name
      t.integer :status, default: 0
      t.string :import_errors
      t.references :user

      t.timestamps
    end
  end
end
