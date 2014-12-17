class ApioProjectsController < BaseApiController
  before_filter :find_project, only: [:show, :update]

  before_filter only: :create do
    unless @json.has_key?('project') && @json['project'].responds_to?(:[]) && @json['project']['name']
      render nothing: true, status: :bad_request
    end
  end

  before_filter only: :update do
    unless @json.has_key?('project')
      render nothing: true, status: :bad_request
    end
  end

  before_filter only: :create do
    @project = Project.find_by_name(@json['project']['name'])
  end

  def index
    render json: Project.where('owner_id = ?', @user.id)
  end

  def show
    render json: @project
  end

end
