# == Schema Information
#
# Table name: cats
#
#  id         :integer          not null, primary key
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Cat < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :name, presence: true
end
