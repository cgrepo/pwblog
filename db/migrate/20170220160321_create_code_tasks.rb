class CreateCodeTasks < ActiveRecord::Migration
  def change
    create_table :code_tasks do |t|
      t.string :title
      t.string :description
      t.boolean :done
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
