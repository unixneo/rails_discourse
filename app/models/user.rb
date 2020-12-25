class User < ApplicationRecord
  belongs_to :seen_notification
  belongs_to :approved_by
  belongs_to :uploaded_avatar
  belongs_to :primary_group
end
