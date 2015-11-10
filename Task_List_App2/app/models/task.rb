class Task < ActiveRecord::Base
	belongs_to :TaskList

	validates :title, :priority, :duedate, :Task_List_id, presence: { message: "must be present" }

  validates :priority, inclusion: { in: 1..10, message: 'needs to be between 1 and 10'  }
end
