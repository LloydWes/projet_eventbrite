class User < ApplicationRecord
  has_many :attendances
  has_many :events#, :foreign_key => 'admin_id'

    after_create :welcome_send



  def welcome_send
    # print "-"*10, "Avant email\n"
    UserMailer.welcome_email(self).deliver_now
    # print "-"*10, "Après email\n"
  end
end
