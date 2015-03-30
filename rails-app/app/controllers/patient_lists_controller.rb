class PatientListsController < ApplicationController
  before_action :set_patient_list, only: [:show, :edit, :update, :destroy]

  # GET /patient_lists
  # GET /patient_lists.json
  def index
    @patient_lists = current_user.patient_lists
  end

  # GET /patient_lists/1
  # GET /patient_lists/1.json
  def show
    @patients = @patient_list.patients.recent
  end

  # GET /patient_lists/new
  def new
    @patient_list = current_user.patient_lists.new
  end

  # GET /patient_lists/1/edit
  def edit
  end

  # POST /patient_lists
  # POST /patient_lists.json
  def create
    @patient_list = current_user.patient_lists.new(patient_list_params)

    respond_to do |format|
      if @patient_list.save
        format.html { redirect_to @patient_list, notice: 'Patient list was successfully created.' }
        format.json { render :show, status: :created, location: @patient_list }
      else
        format.html { render :new }
        format.json { render json: @patient_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_lists/1
  # PATCH/PUT /patient_lists/1.json
  def update
    respond_to do |format|
      if @patient_list.update(patient_list_params)
        format.html { redirect_to @patient_list, notice: 'Patient list was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient_list }
      else
        format.html { render :edit }
        format.json { render json: @patient_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_lists/1
  # DELETE /patient_lists/1.json
  def destroy
    @patient_list.destroy
    respond_to do |format|
      format.html { redirect_to patient_lists_url, notice: 'Patient list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_list
      @patient_list = current_user.patient_lists.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_list_params
      params.require(:patient_list).permit!
    end
end
