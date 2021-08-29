class ProjectsController < ApplicationController

  http_basic_authenticate_with name: "jimu", password: "secret"

  def index
    @projects = Project.all
    render json: @projects
  end
end
