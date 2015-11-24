class Event < ActiveRecord::Base
	validates :name, :prize_money, :application_link, :last_day_apply, presence: true
	validates :application_link, uniqueness: true

	UNRANSACKABLE_ATTRIBUTES = ["id", "updated_at", "created_at"]

	def self.ransackable_attributes auth_object = nil
	  (column_names - UNRANSACKABLE_ATTRIBUTES) + _ransackers.keys
	end
end
