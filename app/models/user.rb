# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  ip_address :inet
#  username   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_username  (username) UNIQUE
#

class User < ApplicationRecord
	has_many :palettes
	before_validation :generate_username 
	
	validates_presence_of :username, :ip_address
	validates_uniqueness_of :username
	accepts_nested_attributes_for :palettes

	# dynamic generate the username of guest user
	def generate_username
		self.username = "guest_#{Time.now.to_i}#{rand(100)}" if username.blank?
	end
end
