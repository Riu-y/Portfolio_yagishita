class SearchsController < ApplicationController
	#ドライバー側 検索アクション
	def search_driver
		@driver= current_driver
		@content = params["search"]["content"]
		@search = search_for_driver(@content)
		@records = @search.page
	end
	#広告主側 検索アクション
	def search_ad_client
		@ad_client = current_ad_client
		@content = params["search"]["content"]
		@search = search_for_ad_client(@content)
		@records = @search.page
	end
	#検索機能
  private
	def search_for_ad_client(content)
		Driver.where('driver_name LIKE ? OR address LIKE ?','%'+content+'%', '%'+content+'%' )
	end
	def search_for_driver(content)
		AdClient.joins(:ad).where('ad.title LIKE ?', '%'+content+'%')
		# Ad.where('title LIKE ?', '%'+content+'%')
		# User.joins(:group).where('users.name = "hanako" AND groups.name = "hobby"')

	end
	
end

	# def search_for(model, content)
	# 	if model == 'ad'
	# 		Ad.where('title LIKE ?', '%'+content+'%')
	# 	elsif model == 'ad_client'
	# 		AdClient.where('company_name LIKE ?', '%'+content+'%')
	# 	elsif  model == 'driver'
	# 		Driver.where('driver_name LIKE ?', '%'+content+'%')
	# 	elsif model == 'address'
	# 		Driver.where('address LIKE ?', '%'+content+'%')
	# 	end
	# end