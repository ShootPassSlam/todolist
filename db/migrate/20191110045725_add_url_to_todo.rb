class AddUrlToTodo < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :url, :string
  end
end
