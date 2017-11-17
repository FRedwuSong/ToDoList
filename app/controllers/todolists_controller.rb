class TodolistsController < ApplicationController
 before_action :set_todolist, :only => [:show, :edit, :update, :destroy] 
  def index
    @todolists = Todolist.order(date: :asc)
  end    

  def new
    @todolist = Todolist.new
  end

  def create
    @todolist = Todolist.new(todolist_params)
    if @todolist.save
        redirect_to todolists_url
    else
      render  :new
    end
  end
  # def show
  #   # set_todolist
  # end
  # def edit
  #   # set_todolist
  # end
  def update
  # set_todolist
    if @todolist.update_attributes(todolist_params)
      redirect_to todolist_path(@todolist)
    else
      render  :action => :edit
    end 
  # @todolist.update_attributes(todolist_params)

  # redirect_to todolist_path(@todolist)   
  # end 
  def destroy
  # set_todolist
   # @todolist.destroy
   
   # redirect_to todolists_url
    if @todolist.can_destroy?
      @todolist.destroy
      redirect_to todolists_url
    else
      redirect_to todolists_url 
    end
  end  

  # def is_public
  #   @todolist.update(is_public: !(@todolist.is_public))
  # end 
end
  
 
private

  def set_todolist
   @todolist = Todolist.find(params[:id])
  end
  def todolist_params
   params.require(:todolist).permit(:name, :date, :note)
  end
end
