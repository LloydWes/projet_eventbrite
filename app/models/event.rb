class Event < ApplicationRecord
  belongs_to :user, :foreign_key => 'admin_id'#, class_name: 'User'
  has_many :attendances
  # belongs_to :user#, :foreign_key => 'admin_id'
end
