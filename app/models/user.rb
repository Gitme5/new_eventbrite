class User < ApplicationRecord

	# Envoi un mail apres chaque création d'utilisateur
	#after_create :welcome_send

  #def welcome_send
  #  UserMailer.welcome_email(self).deliver_now
  #end
  
	has_many :attendances
	has_many :events, through: :attendances

	
	#validates :email, presence: true, uniqueness: true
	#validates :description, presence: true
	#validates :first_name, presence: true
	#validates :last_name, presence: true

end
