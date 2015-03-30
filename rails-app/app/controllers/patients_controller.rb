class PatientsController < ApplicationController
  before_action :set_patient_list
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  # GET /patients
  # GET /patients.json
  def index
    @patients = @patient_list.patients
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
    @encounters = @patient.encounters.recent.page(params[:page])
  end

  # GET /patients/new
  def new
    @patient = @patient_list.patients.build
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = @patient_list.patients.build(patient_params)

    respond_to do |format|
      if @patient.save
        @patient_list.patients << @patient
        format.html { redirect_to patient_list_patients_path, notice: 'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_patient_list
      @patient_list = current_user.patient_lists.find(params[:patient_list_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = @patient_list.patients.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit!
    end
end
