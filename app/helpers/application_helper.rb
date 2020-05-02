module ApplicationHelper
	def convert_fee(ad_fee)
		"#{ad_fee.to_s(:delimited, delimiter: ',')}円"
	end
end
