require 'test_helper'

class PatientListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: patient_lists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  content    :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_patient_lists_on_user_id  (user_id)
#
