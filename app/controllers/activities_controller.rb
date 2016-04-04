# change to open read controller later in development
class ActivitiesController < ProtectedController
  before_action :set_activity, only: [:show, :update, :destroy]

  # GET /activities
  # GET /activities.json
  def index
    if current_user.admin?
      @activities = Activity.all
    else
      @activities = current_user.activities
      render json: @activities
    end
  end

  # GET /activities/1
  # GET /activities/1.json
  def show
    render json: @activity
  end

  # POST /activities
  # POST /activities.json
  def create
    # @activity = Activity.new(activity_params) unauthenticated Create
    @activity = current_user.activities.build(activity_params)
    if @activity.save
      render json: @activity, status: :created, location: @activity
    else
      render json: @activity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /activities/1
  # PATCH/PUT /activities/1.json
  def update
    @activity = Activity.find(params[:id])

    if @activity.update(activity_params)
      head :no_content
    else
      render json: @activity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.json
  def destroy
    @activity.destroy

    head :no_content
  end

  private

    def set_activity
      @activity = Activity.find(params[:id])
    end

    def activity_params
      # params[:activity] better to use below to see more info
      params.require(:activity).permit(:name, :category, :value, :challenge, :user_id)
    end
end
