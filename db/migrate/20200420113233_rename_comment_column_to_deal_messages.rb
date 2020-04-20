class RenameCommentColumnToDealMessages < ActiveRecord::Migration[5.2]
  def change
  	rename_column :deal_messages, :comment, :message
  end
end
