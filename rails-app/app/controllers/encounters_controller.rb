class EncountersController < ApplicationController
  before_action :set_patient_list
  before_action :set_patient
  before_action :set_encounter, only: [:show, :edit, :update, :destroy]

  def new
    @encounter = @patient.encounters.new
  end

  def create
    @encounter = @patient.encounters.new(encounter_params)
    if @encounter.save
      redirect_to patient_list_patient_path(@patient_list, @patient), notice: 'Patient was successfully updated.'
    else
      render :edit
    end
  end

  def show
  end

  def edit
  end

  def update
    if @encounter.update(encounter_params)
      redirect_to patient_list_patient_path(@patient_list, @patient), notice: 'Patient was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    if @encounter.destroy
      flash[:success] = "Success"
      redirect_to patient_list_patient_path(@patient_list, @patient)
    else
      render :back
    end
  end

  def next
    @encounter = @patient.encounters.where(:id => params[:id]).first
    encounter = @patient.encounters.where("signed_date > ?", @encounter.signed_date).recent.first
    if encounter.present?
      redirect_to patient_list_patient_encounter_path(@patient_list, @patient, encounter)
    else
      flash[:notice] = "This is last encounter."
      redirect_to patient_list_patient_encounter_path(@patient_list, @patient, params[:id])
    end
  end

  def prev
    @encounter = @patient.encounters.where(:id => params[:id]).first
    encounter = @patient.encounters.where("signed_date < ?", @encounter.signed_date).recent.last
    if encounter.present?
      redirect_to patient_list_patient_encounter_path(@patient_list, @patient, encounter)
    else
      flash[:notice] = "This is first encounter."
      redirect_to patient_list_patient_encounter_path(@patient_list, @patient, params[:id])
    end
  end

  private

    def set_patient_list
      @patient_list = current_user.patient_lists.find(params[:patient_list_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = @patient_list.patients.find(params[:patient_id])
    end

    def set_encounter
      @encounter = @patient.encounters.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def encounter_params
      params.require(:encounter).permit!
    end
end
