require 'test_helper'

class EncounterTagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: encounter_tags
#
#  id           :integer          not null, primary key
#  encounter_id :integer
#  tag_id       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_encounter_tags_on_encounter_id  (encounter_id)
#  index_encounter_tags_on_tag_id        (tag_id)
#
