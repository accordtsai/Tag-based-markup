class Tag < ActiveRecord::Base
  belongs_to :user
  has_many :encounter_tags
  has_many :encounters, through: :encounter_tags
  has_many :patients, through: :encounters

  def self.for_select
    self.pluck(:name, :id)
  end
end

# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_tags_on_user_id  (user_id)
#
