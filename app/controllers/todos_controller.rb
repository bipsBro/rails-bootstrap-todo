class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]

  def index
    @todos = Todo.all
  end

  def show
  end

  def new
    @todo = Todo.new
  end

  def edit
   
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to edit_todo_path(@todo), notice: 'Todo list was successfully created.'
    else
      render :new
    end

    logger.debug "New article: #{@todo.inspect}"
  end

  def update
    if @todo.update(todo_params)
      redirect_to edit_todo_path(@todo), notice: 'Todo list was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @todo.destroy
    redirect_to todo_url, notice: 'Todo list was successfully destroyed.'
  end

  private
    def set_todo
      @todo = Todo.find(params[:id])
    end

    def todo_params
      params.require(:todo).permit(:title, :notes, tasks_attributes: Task.attribute_names.map(&:to_sym).push(:_destroy))
    end
end
