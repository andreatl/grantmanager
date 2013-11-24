class TasksController < ApplicationController
	def create
		@grant = Grant.find(params[:grant_id])
		@task = @grant.tasks.new
		@task.update_attributes(params[:task].permit(:description,:complete))
		if @task.save
			redirect_to grant_url(@grant)
		else
			redirect_to grant_url(@grant)
		end
	end

	def complete
		@grant = Grant.find(params[:grant_id])
		@task = Task.find(params[:id])
		@task.complete = true
		@task.save
		redirect_to grant_url(@grant)
	end
end
