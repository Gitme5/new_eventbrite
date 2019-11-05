class Attendance < ApplicationRecord

	belongs_to :user
	belongs_to :event

	# Envoi un mail apres chaque création d'évenement
	after_create :attendance_send

  def attendance_send
    AttendanceMailer.attendance_email(self.user,self.event).deliver_now
  end

end
