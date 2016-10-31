class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :name
      t.references :SubTarget, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
