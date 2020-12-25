class Post < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  belongs_to :last_editor
  belongs_to :hidden_reason
  belongs_to :reply_to_user
  belongs_to :deleted_by
  belongs_to :locked_by
  belongs_to :image_upload
end
