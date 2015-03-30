require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: patients
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  personal_data :text(65535)
#  first_name    :string(255)
#  last_name     :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
