class CreatePReminders < ActiveRecord::Migration
  def change
    create_table :p_reminders do |t|
      t.string :title
      t.string :description
      t.string :solution
      t.string :genus
      t.string :subgenus
      t.references :User, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
