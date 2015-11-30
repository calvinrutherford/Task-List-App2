class Task < ActiveRecord::Base
	belongs_to :TaskList
	# jarp: should be 'belongs_to :task_list'
	# 			there seems to be a problem with the association between task and task list
	# 			The database column is capitalized and it shouldn't be. Works one way but there are issues when you try and access task_list from the task object
	validates :title, :priority, :duedate, :Task_List_id, presence: { message: "must be present" }
  validates :priority, inclusion: { in: 1..10, message: 'needs to be between 1 and 10'  }
end
