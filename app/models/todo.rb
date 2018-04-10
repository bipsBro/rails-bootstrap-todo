class Todo < ApplicationRecord
	validates :title, presence: true
	validates :notes, presence: true
	has_many :tasks, dependent: :destroy
  	accepts_nested_attributes_for :tasks, allow_destroy: true, :reject_if => lambda { |a| a['name'].blank? }
end
