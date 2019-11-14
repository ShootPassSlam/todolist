class TodosController < ApplicationController
  def index
    # get current user todos
    @todos = current_user.todos
    json_response(@todos)
  end

  def create
    # create todos belonging to current user
    @todo = current_user.todos.create!(todo_params)
    json_response(@todo, :created)
  end

  def destroy_all
    Todo.delete_all
    json_response([], :no_content)
  end

  def show
    json_response(Todo.find(params[:id]))
  end

  def update
    json_response(Todo.update(params[:id], todo_params))
  end

  def destroy
    deleted_todo = Todo.find(params[:id])
    Todo.delete(params[:id])
    json_response(deleted_todo, :no_content)
  end

  private

  def todo_params
    params.permit(:title, :completed, :order)
  end

  def set_todo
    @todo = Todo.find(params[:id])
  end
end