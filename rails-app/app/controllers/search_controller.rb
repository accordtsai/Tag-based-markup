class SearchController < ApplicationController
  def index
    if params[:q].blank? || params[:q][:tag_id].blank?
      flash[:alert] = "Wrong Search"
      return redirect_to root_path
    end
    @tag = current_user.tags.find(params[:q][:tag_id])

    @encounters = @tag.encounters.includes(:patient).recent
    @patients = @tag.patients.recent.uniq
  end

  def add_to_patient_list
    @patient_list = current_user.patient_lists.find(params[:add_to_patient_list][:patient_list_id])
    @patients = current_user.patients.where(id: params[:add_to_patient_list][:patient_ids]).uniq

    patient_list_patient_ids = @patient_list.patients.pluck(:id)
    @patients.each do |patient|
      @patient_list.patients << patient unless patient_list_patient_ids.include?(patient.id)
    end

    redirect_to patient_list_path(@patient_list)
  end
end
