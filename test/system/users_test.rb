require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    check "Active" if @user.active
    check "Admin" if @user.admin
    check "Approved" if @user.approved
    fill_in "Approved at", with: @user.approved_at
    fill_in "Approved by", with: @user.approved_by_id
    fill_in "Date of birth", with: @user.date_of_birth
    fill_in "First seen at", with: @user.first_seen_at
    fill_in "Flag level", with: @user.flag_level
    fill_in "Group locked trust level", with: @user.group_locked_trust_level
    fill_in "Ip address", with: @user.ip_address
    fill_in "Last emailed at", with: @user.last_emailed_at
    fill_in "Last posted at", with: @user.last_posted_at
    fill_in "Last seen at", with: @user.last_seen_at
    fill_in "Locale", with: @user.locale
    fill_in "Manual locked trust level", with: @user.manual_locked_trust_level
    check "Moderator" if @user.moderator
    fill_in "Name", with: @user.name
    fill_in "Password hash", with: @user.password_hash
    fill_in "Previous visit at", with: @user.previous_visit_at
    fill_in "Primary group", with: @user.primary_group_id
    fill_in "Registration ip address", with: @user.registration_ip_address
    fill_in "Salt", with: @user.salt
    fill_in "Secure identifier", with: @user.secure_identifier
    fill_in "Seen notification", with: @user.seen_notification_id
    fill_in "Silenced till", with: @user.silenced_till
    check "Staged" if @user.staged
    fill_in "Suspended at", with: @user.suspended_at
    fill_in "Suspended till", with: @user.suspended_till
    fill_in "Title", with: @user.title
    fill_in "Trust level", with: @user.trust_level
    fill_in "Uploaded avatar", with: @user.uploaded_avatar_id
    fill_in "Username", with: @user.username
    fill_in "Username lower", with: @user.username_lower
    fill_in "Views", with: @user.views
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    check "Active" if @user.active
    check "Admin" if @user.admin
    check "Approved" if @user.approved
    fill_in "Approved at", with: @user.approved_at
    fill_in "Approved by", with: @user.approved_by_id
    fill_in "Date of birth", with: @user.date_of_birth
    fill_in "First seen at", with: @user.first_seen_at
    fill_in "Flag level", with: @user.flag_level
    fill_in "Group locked trust level", with: @user.group_locked_trust_level
    fill_in "Ip address", with: @user.ip_address
    fill_in "Last emailed at", with: @user.last_emailed_at
    fill_in "Last posted at", with: @user.last_posted_at
    fill_in "Last seen at", with: @user.last_seen_at
    fill_in "Locale", with: @user.locale
    fill_in "Manual locked trust level", with: @user.manual_locked_trust_level
    check "Moderator" if @user.moderator
    fill_in "Name", with: @user.name
    fill_in "Password hash", with: @user.password_hash
    fill_in "Previous visit at", with: @user.previous_visit_at
    fill_in "Primary group", with: @user.primary_group_id
    fill_in "Registration ip address", with: @user.registration_ip_address
    fill_in "Salt", with: @user.salt
    fill_in "Secure identifier", with: @user.secure_identifier
    fill_in "Seen notification", with: @user.seen_notification_id
    fill_in "Silenced till", with: @user.silenced_till
    check "Staged" if @user.staged
    fill_in "Suspended at", with: @user.suspended_at
    fill_in "Suspended till", with: @user.suspended_till
    fill_in "Title", with: @user.title
    fill_in "Trust level", with: @user.trust_level
    fill_in "Uploaded avatar", with: @user.uploaded_avatar_id
    fill_in "Username", with: @user.username
    fill_in "Username lower", with: @user.username_lower
    fill_in "Views", with: @user.views
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
