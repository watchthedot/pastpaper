class Location < ActiveRecord::Base

	belongs_to :document
	has_many :facts

	def full_location
		[self.street1, self.street2, self.town, self.county, self.state, self.country].delete_if{|ad_elem| ad_elem.blank?}.join(', ')
	end

	def full_town
		[self.town, self.county, self.state, self.country].delete_if{|ad_elem| ad_elem.blank?}.join(', ')
	end

	def full_county
		[self.county, self.state, self.country].delete_if{|ad_elem| ad_elem.blank?}.join(', ')
	end

end
