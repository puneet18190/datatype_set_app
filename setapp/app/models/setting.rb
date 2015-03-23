class Setting < ActiveRecord::Base
	attr_accessor :type
	validates :name, presence: true
	validates :value, presence: true
end
