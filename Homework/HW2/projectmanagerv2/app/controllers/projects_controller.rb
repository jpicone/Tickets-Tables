class ProjectsController < ApplicationController
	
  def show
    id = params[:id] # retrieve project task ID from URI route
    @project = Project.find(id) # look up project task by unique ID
    # will render app/views/projects/show.<extension> by default
  end

  def index
    #@projects = Project.all
		@all_users = Project.all_users
		@selected_users = params[:users] || session[:users] || {}
 		category = params[:category] || session[:category]
		case category
		when "title"
			order_by_category, @title_header = {:order => :title}, "hilite"
		when "description"
			order_by_category, @details_header = {:order => :description}, "hilite"
		when "user"
			order_by_category, @user_header = {:order => :user}, "hilite"
		when "due_date"
			order_by_category, @due_date_header = {:order => :due_date}, "hilite"
		end

		if @selected_users == {}
			@selected_users = Hash[@all_users.map {|user| [user, user]}]
		end
		if params[:category] != session[:category]
			session[:category] = category
			flash.keep
			redirect_to :category => category, :users => @selected_users and return
		end
		if params[:users] != session[:users] and @selected_users != {}
			session[:category] = category
			session[:users] = @selected_users
			flash.keep
			redirect_to :category => category, :users => @selected_users and return
		end

		@projects = Project.find_all_by_user(@selected_users.keys, order_by_category)
  end

  def new
    # default: render 'new' template
  end

  def create
    @project = Project.create!(params[:project])
    flash[:notice] = "#{@project.title} was successfully created."
    redirect_to projects_path
  end

  def edit
    @project = Project.find params[:id]
  end

  def update
    @project = Project.find params[:id]
    @project.update_attributes!(params[:project])
    flash[:notice] = "#{@project.title} was successfully updated."
    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = "Project '#{@project.title}' deleted."
    redirect_to projects_path
  end
end
