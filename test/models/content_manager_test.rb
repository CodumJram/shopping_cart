# == Schema Information
#
# Table name: content_managers
#
#  id              :integer          not null, primary key
#  first_name      :string
#  last_name       :string
#  phone           :string
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class ContentManagerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
