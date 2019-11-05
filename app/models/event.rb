class Event < ApplicationRecord


	has_many :attendances
	has_many :users, through: :attendances

	belongs_to :admin, class_name: "User"

	#validates :start_date, presence: true  
	#validates :duration, presence: true 
	#validates :title, presence: true, length: { in: 4..140 }
	#validates :description, presence: true, length: { in: 20..1000 }
	#validates :price, presence: true, numericality: { only_integer: true, greater_than 0, less_than: 1000 } 
	#validates :location, presence: true
	

	#validate :start_date_cannot_be_in_the_past
	
	def start_date_cannot_be_in_the_past
	  if start_date < Date.today
	    errors.add(:start_date, "can't be in the past")
	  end
	end

	#validate :value_must_be_multiple_of_5_and_positive

	def value_must_be_multiple_of_5_and_positive
	  if duration%5 != 0 && duration <=0
	    errors.add(:duration, "must be greater than 0 and by slots of 5 minutes")
	  end
	end


end
