class Contact < ApplicationRecord
	 validates :name, presence: true,length: { minimum: 2 }
	 validates :email, presence: true
	 validates :content, presence: true, length: { minimum: 6 }
	 validates :telephone_number, presence: true, numericality: {
		 message: -> (rec, data){
				I18n.t('activemodel.errors.message.input_number')
			}
		}

	 enum work_status: { new_inquiry: 0, working_inquiry: 1, past_inquiry: 2 }
end
