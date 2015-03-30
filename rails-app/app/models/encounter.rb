class Encounter < ActiveRecord::Base
  belongs_to :patient

  has_many :encounter_tags
  has_many :tags, through: :encounter_tags

  validates :signed_date, presence: true

  self.per_page = 15

  scope :recent, -> { order("signed_date ASC", "id ASC") }
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
