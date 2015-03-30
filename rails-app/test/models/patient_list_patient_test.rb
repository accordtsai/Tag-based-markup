require 'test_helper'

class PatientListPatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
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
