class DeleteUrlToTodo < ActiveRecord::Migration[6.0]
  def change
    remove_column :todos, :url, :string
  end
end
