class Comment < ApplicationRecord
 	
 	belongs_to :post

  	before_save :generate_timestamp

	def generate_timestamp
		self.datetime = DateTime.now
	end

end
