class PatientList < ActiveRecord::Base
  belongs_to :user
  has_many :patient_list_patients
  has_many :patients, through: :patient_list_patients

  def self.for_select
    pluck(:name, :id)
  end
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
