module UnderDealsHelper
	def check_apply
		current_driver.under_deals.where.not(work_status: 'finished').where.not(work_status: 'checked_refuse')
	end
end
