class Team < ApplicationRecord
	has_many :projects
	has_many :users 
	accepts_nested_attributes_for :users, allow_destroy: true
end
