class AddCodeBranchToCodeTask < ActiveRecord::Migration
  def change
    add_column :code_tasks, :codebranch, :string
  end
end
