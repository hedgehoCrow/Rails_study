class CapistranoStudyModelsController < ApplicationController
  before_action :set_capistrano_study_model, only: [:show, :edit, :update, :destroy]

  # GET /capistrano_study_models
  # GET /capistrano_study_models.json
  def index
    @capistrano_study_models = CapistranoStudyModel.all
  end

  # GET /capistrano_study_models/1
  # GET /capistrano_study_models/1.json
  def show
  end

  # GET /capistrano_study_models/new
  def new
    @capistrano_study_model = CapistranoStudyModel.new
  end

  # GET /capistrano_study_models/1/edit
  def edit
  end

  # POST /capistrano_study_models
  # POST /capistrano_study_models.json
  def create
    @capistrano_study_model = CapistranoStudyModel.new(capistrano_study_model_params)

    respond_to do |format|
      if @capistrano_study_model.save
        format.html { redirect_to @capistrano_study_model, notice: 'Capistrano study model was successfully created.' }
        format.json { render :show, status: :created, location: @capistrano_study_model }
      else
        format.html { render :new }
        format.json { render json: @capistrano_study_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /capistrano_study_models/1
  # PATCH/PUT /capistrano_study_models/1.json
  def update
    respond_to do |format|
      if @capistrano_study_model.update(capistrano_study_model_params)
        format.html { redirect_to @capistrano_study_model, notice: 'Capistrano study model was successfully updated.' }
        format.json { render :show, status: :ok, location: @capistrano_study_model }
      else
        format.html { render :edit }
        format.json { render json: @capistrano_study_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /capistrano_study_models/1
  # DELETE /capistrano_study_models/1.json
  def destroy
    @capistrano_study_model.destroy
    respond_to do |format|
      format.html { redirect_to capistrano_study_models_url, notice: 'Capistrano study model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capistrano_study_model
      @capistrano_study_model = CapistranoStudyModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def capistrano_study_model_params
      params.require(:capistrano_study_model).permit(:field1, :field2, :field3, :field4)
    end
end
