class TodosController < ApplicationController
  def index
    render json: Todo.all
  end

  def create
    render json: Todo.create(todo_params)
  end

  def destroy_all
    Todo.delete_all
    render json: []
  end

  def show
    render json: Todo.find(params[:id])
  end

  def update
    render json: Todo.update(params[:id], todo_params)
  end

  def destroy
    deleted_todo = Todo.find(params[:id])
    Todo.delete(params[:id])
    render json: deleted_todo
  end

  private

  def todo_params
    params.permit(:title, :completed, :order)
  end
end