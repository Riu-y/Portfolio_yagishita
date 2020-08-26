class SearchsController < ApplicationController
	#ドライバー側 検索アクション
	def search_driver
		@driver= current_driver
		content = params["search"]["content"]
		@ad_clients = AdClient.where( 'company_name LIKE ?', '%'+content+'%' ).page
		@ads = Ad.where('title LIKE ?', '%'+content+'%').page
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
end