class StudentActionType < ActiveRecord::Base
  attr_accessible :student_action_category_id, :name, :value

	validates :name, :presence => true
	validates :student_action_category_id, :presence => true
	validates :value, :presence => true
	
	has_many :student_actions
	belongs_to :category, :class_name => "StudentActionCategory", :foreign_key => "student_action_category_id"
end
