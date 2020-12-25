require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { active: @user.active, admin: @user.admin, approved: @user.approved, approved_at: @user.approved_at, approved_by_id: @user.approved_by_id, date_of_birth: @user.date_of_birth, first_seen_at: @user.first_seen_at, flag_level: @user.flag_level, group_locked_trust_level: @user.group_locked_trust_level, ip_address: @user.ip_address, last_emailed_at: @user.last_emailed_at, last_posted_at: @user.last_posted_at, last_seen_at: @user.last_seen_at, locale: @user.locale, manual_locked_trust_level: @user.manual_locked_trust_level, moderator: @user.moderator, name: @user.name, password_hash: @user.password_hash, previous_visit_at: @user.previous_visit_at, primary_group_id: @user.primary_group_id, registration_ip_address: @user.registration_ip_address, salt: @user.salt, secure_identifier: @user.secure_identifier, seen_notification_id: @user.seen_notification_id, silenced_till: @user.silenced_till, staged: @user.staged, suspended_at: @user.suspended_at, suspended_till: @user.suspended_till, title: @user.title, trust_level: @user.trust_level, uploaded_avatar_id: @user.uploaded_avatar_id, username: @user.username, username_lower: @user.username_lower, views: @user.views } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { active: @user.active, admin: @user.admin, approved: @user.approved, approved_at: @user.approved_at, approved_by_id: @user.approved_by_id, date_of_birth: @user.date_of_birth, first_seen_at: @user.first_seen_at, flag_level: @user.flag_level, group_locked_trust_level: @user.group_locked_trust_level, ip_address: @user.ip_address, last_emailed_at: @user.last_emailed_at, last_posted_at: @user.last_posted_at, last_seen_at: @user.last_seen_at, locale: @user.locale, manual_locked_trust_level: @user.manual_locked_trust_level, moderator: @user.moderator, name: @user.name, password_hash: @user.password_hash, previous_visit_at: @user.previous_visit_at, primary_group_id: @user.primary_group_id, registration_ip_address: @user.registration_ip_address, salt: @user.salt, secure_identifier: @user.secure_identifier, seen_notification_id: @user.seen_notification_id, silenced_till: @user.silenced_till, staged: @user.staged, suspended_at: @user.suspended_at, suspended_till: @user.suspended_till, title: @user.title, trust_level: @user.trust_level, uploaded_avatar_id: @user.uploaded_avatar_id, username: @user.username, username_lower: @user.username_lower, views: @user.views } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
