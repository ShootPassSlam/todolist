class AddCompletedRemoveCreatedToTodo < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :completed, :boolean
    remove_column :todos, :created_by, :string
  end
end
