class PatientListPatient < ActiveRecord::Base
  belongs_to :patient_list
  belongs_to :patient
end

# == Schema Information
#
# Table name: patient_list_patients
#
#  id              :integer          not null, primary key
#  patient_list_id :integer
#  patient_id      :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_patient_list_patients_on_patient_id       (patient_id)
#  index_patient_list_patients_on_patient_list_id  (patient_list_id)
#
