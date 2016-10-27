class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.text :description
      t.text :solution
      t.references :User, index: true, foreign_key: true
      t.references :ErrBrand, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
