json.extract! user, :id, :username, :name, :seen_notification_id, :last_posted_at, :password_hash, :salt, :active, :username_lower, :last_seen_at, :admin, :last_emailed_at, :trust_level, :approved, :approved_by_id, :approved_at, :previous_visit_at, :suspended_at, :suspended_till, :date_of_birth, :views, :flag_level, :ip_address, :moderator, :title, :uploaded_avatar_id, :locale, :primary_group_id, :registration_ip_address, :staged, :first_seen_at, :silenced_till, :group_locked_trust_level, :manual_locked_trust_level, :secure_identifier, :created_at, :updated_at
json.url user_url(user, format: :json)
