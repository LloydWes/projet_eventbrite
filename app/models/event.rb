class Event < ApplicationRecord
  has_many :attendances
  # belongs_to :user#, :foreign_key => 'admin_id'


  belongs_to :user, class_name: 'User', foreign_key: 'admin_id'
end
