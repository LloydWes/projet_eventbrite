class UserMailer < ApplicationMailer
  default from: 'bonjour@thehackingproject.org'

  def welcome_email(user)
    # puts "~"*10
    @user = user
    @url  = 'http://monsite.fr/login' 
    # puts "welcome_email #{@user.id}  #{@user.email}"
    mail(to: @user.email, subject: 'Bienvenue chez EventBrite !') 
    # puts "welcome_email"
    # puts "~"*10
  end

  def inform_attendance(attend)
    puts "inform_attendance #{attend.user_id}  #{attend.user.email}"
    mail(to: attend.user.email, subject: "Quelqu'un a rejoint votre événement" )
    # puts "/inform_attendance"
  end
end
