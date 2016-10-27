class CreateIcorrections < ActiveRecord::Migration
  def change
    create_table :icorrections do |t|
      t.string :title
      t.string :genus
      t.text :description
      t.references :User, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
