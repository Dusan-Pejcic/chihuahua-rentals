class IndexControllersController < ApplicationController
  before_action :set_index_controller, only: %i[ show edit update destroy ]

  # GET /index_controllers or /index_controllers.json
  def index
    @index_controllers = IndexController.all
  end

  # GET /index_controllers/1 or /index_controllers/1.json
  def show
  end

  # GET /index_controllers/new
  def new
    @index_controller = IndexController.new
  end

  # GET /index_controllers/1/edit
  def edit
  end

  # POST /index_controllers or /index_controllers.json
  def create
    @index_controller = IndexController.new(index_controller_params)

    respond_to do |format|
      if @index_controller.save
        format.html { redirect_to @index_controller, notice: "Index controller was successfully created." }
        format.json { render :show, status: :created, location: @index_controller }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @index_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /index_controllers/1 or /index_controllers/1.json
  def update
    respond_to do |format|
      if @index_controller.update(index_controller_params)
        format.html { redirect_to @index_controller, notice: "Index controller was successfully updated." }
        format.json { render :show, status: :ok, location: @index_controller }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @index_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /index_controllers/1 or /index_controllers/1.json
  def destroy
    @index_controller.destroy
    respond_to do |format|
      format.html { redirect_to index_controllers_url, notice: "Index controller was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_index_controller
      @index_controller = IndexController.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def index_controller_params
      params.fetch(:index_controller, {})
    end
end
