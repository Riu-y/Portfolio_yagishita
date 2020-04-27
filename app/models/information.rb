class Information < ApplicationRecord
	validates :title,presence: true
  validates :content,presence: true
  validates :viewer_type,presence: true

  enum viewer_type: { both: 0, ad_client: 1, driver: 2 }
end
