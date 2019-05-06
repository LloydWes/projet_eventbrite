class Attendance < ApplicationRecord
  belongs_to :event
  belongs_to :user
  after_create :inform_attendance

  def inform_attendance
    UserMailer.inform_attendance(self).deliver_now
  end
end
