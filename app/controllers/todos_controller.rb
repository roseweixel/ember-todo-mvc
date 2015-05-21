class TodosController < ApplicationController
  def index
    render json: Todo.all
  end

  def create
    safe_todo = params.require(:todo).permit(:body, :title, :levelOfRage)
    todo = Todo.create(safe_todo)
    render json: todo
  end

  def update
    safe_todo = params.require(:todo).permit(:body, :title, :levelOfRage)
    todo = Todo.find(params[:id])
    todo.update(safe_todo)
    render json: todo
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    render json: {}
  end
end
