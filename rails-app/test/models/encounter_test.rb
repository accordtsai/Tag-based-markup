require 'test_helper'

class EncounterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: encounters
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  signed_date :datetime
#  content     :text(65535)
#  patient_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_encounters_on_patient_id  (patient_id)
#
