class Patient < ActiveRecord::Base
  has_many :patient_list_patients
  has_many :patient_lists, through: :patient_list_patients
  has_many :encounters

  scope :recent, -> { order("id DESC") }
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
