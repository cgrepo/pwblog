class CreateErrBrands < ActiveRecord::Migration
  def change
    create_table :err_brands do |t|
      t.string :genus
      t.text :description
      t.timestamps null: false
    end
  end
end
