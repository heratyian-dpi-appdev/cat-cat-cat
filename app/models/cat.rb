# == Schema Information
#
# Table name: cats
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Cat < ApplicationRecord
  validates :name, presence: true
end
