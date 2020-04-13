class SearchsController < ApplicationController
	def search_driver
		@model = params["search"]["model"]
		@content = params["search"]["content"]
		@records = search_for(@model,@content)
	end

	def search_ad_client
		@model = params["search"]["model"]
		@content = params["search"]["content"]
		@records = search_for(@model,@content)
	end

  private
	def search_for(model, content)
		if model == 'ad'
			Ad.where('title LIKE ?', '%'+content+'%')
		elsif model == 'ad_client'
			AdClient.where('company_name LIKE ?', '%'+content+'%')
		elsif  model == 'driver'
			Driver.where('driver_name LIKE ?', '%'+content+'%')
		elsif model == 'address'
			Driver.where('address LIKE ?', '%'+content+'%')
		end
	end
end