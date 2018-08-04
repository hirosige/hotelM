# == Schema Information
#
# Table name: profiles
#
#  id          :bigint(8)        not null, primary key
#  first_name  :string(255)
#  last_name   :string(255)
#  middle_name :string(255)
#  username    :string(255)
#  email       :string(255)
#  address     :string(255)
#  phone       :string(255)
#  profession  :string(255)
#  abn         :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
