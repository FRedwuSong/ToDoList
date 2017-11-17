class Todolist < ApplicationRecord
  validates_presence_of :name, :date, :note

	def can_destroy?
		!overdue?
	end

	private
	
	def overdue?
		date < Date.today
	end
end