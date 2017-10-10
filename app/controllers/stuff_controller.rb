class StuffController < ApplicationController
  
  # @all_users = User.all.each
  def index
    @all_users = User.all
    @all_todos = Todo.all
    @all_cats = Cat.all
    # User.all.each do |user|
    #   puts user.username
    # end
    # Todo.all.each do |todo|
    #   puts todo
    # end
    # Cat.all.each do |cat|
    #   puts cat.meow
    # end
  end

  def new
    @todo = Todo.new
  end

  def create
    info = params[:todo]
    t = Todo.new
    t.tasks = info["tasks"]
    t.finished = ((info["finished"] == "true") or (info["finished"] == "True"))
    t.save
    redirect_to action: "index"
    # @todo = params[:todo]
    # @todo.save
  end
  
end
