require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    fill_in "Action code", with: @post.action_code
    fill_in "Baked at", with: @post.baked_at
    fill_in "Baked version", with: @post.baked_version
    fill_in "Bookmark count", with: @post.bookmark_count
    fill_in "Cook method", with: @post.cook_method
    fill_in "Cooked", with: @post.cooked
    fill_in "Deleted at", with: @post.deleted_at
    fill_in "Deleted by", with: @post.deleted_by_id
    fill_in "Edit reason", with: @post.edit_reason
    check "Hidden" if @post.hidden
    fill_in "Hidden at", with: @post.hidden_at
    fill_in "Hidden reason", with: @post.hidden_reason_id
    fill_in "Illegal count", with: @post.illegal_count
    fill_in "Image upload", with: @post.image_upload_id
    fill_in "Inappropriate count", with: @post.inappropriate_count
    fill_in "Incoming link count", with: @post.incoming_link_count
    fill_in "Last editor", with: @post.last_editor_id
    fill_in "Last version at", with: @post.last_version_at
    fill_in "Like count", with: @post.like_count
    fill_in "Like score", with: @post.like_score
    fill_in "Locked by", with: @post.locked_by_id
    fill_in "Notify moderators count", with: @post.notify_moderators_count
    fill_in "Notify user count", with: @post.notify_user_count
    fill_in "Off topic count", with: @post.off_topic_count
    fill_in "Percent rank", with: @post.percent_rank
    fill_in "Post number", with: @post.post_number
    fill_in "Post type", with: @post.post_type
    fill_in "Public version", with: @post.public_version
    fill_in "Quote count", with: @post.quote_count
    fill_in "Raw", with: @post.raw
    fill_in "Raw email", with: @post.raw_email
    fill_in "Reads", with: @post.reads
    fill_in "Reply count", with: @post.reply_count
    check "Reply quoted" if @post.reply_quoted
    fill_in "Reply to post number", with: @post.reply_to_post_number
    fill_in "Reply to user", with: @post.reply_to_user_id
    fill_in "Score", with: @post.score
    fill_in "Self edits", with: @post.self_edits
    fill_in "Sort order", with: @post.sort_order
    fill_in "Spam count", with: @post.spam_count
    fill_in "Topic", with: @post.topic_id
    check "User deleted" if @post.user_deleted
    fill_in "User", with: @post.user_id
    fill_in "Vbpostid", with: @post.vbpostid
    fill_in "Version", with: @post.version
    check "Via email" if @post.via_email
    check "Wiki" if @post.wiki
    fill_in "Word count", with: @post.word_count
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "Action code", with: @post.action_code
    fill_in "Baked at", with: @post.baked_at
    fill_in "Baked version", with: @post.baked_version
    fill_in "Bookmark count", with: @post.bookmark_count
    fill_in "Cook method", with: @post.cook_method
    fill_in "Cooked", with: @post.cooked
    fill_in "Deleted at", with: @post.deleted_at
    fill_in "Deleted by", with: @post.deleted_by_id
    fill_in "Edit reason", with: @post.edit_reason
    check "Hidden" if @post.hidden
    fill_in "Hidden at", with: @post.hidden_at
    fill_in "Hidden reason", with: @post.hidden_reason_id
    fill_in "Illegal count", with: @post.illegal_count
    fill_in "Image upload", with: @post.image_upload_id
    fill_in "Inappropriate count", with: @post.inappropriate_count
    fill_in "Incoming link count", with: @post.incoming_link_count
    fill_in "Last editor", with: @post.last_editor_id
    fill_in "Last version at", with: @post.last_version_at
    fill_in "Like count", with: @post.like_count
    fill_in "Like score", with: @post.like_score
    fill_in "Locked by", with: @post.locked_by_id
    fill_in "Notify moderators count", with: @post.notify_moderators_count
    fill_in "Notify user count", with: @post.notify_user_count
    fill_in "Off topic count", with: @post.off_topic_count
    fill_in "Percent rank", with: @post.percent_rank
    fill_in "Post number", with: @post.post_number
    fill_in "Post type", with: @post.post_type
    fill_in "Public version", with: @post.public_version
    fill_in "Quote count", with: @post.quote_count
    fill_in "Raw", with: @post.raw
    fill_in "Raw email", with: @post.raw_email
    fill_in "Reads", with: @post.reads
    fill_in "Reply count", with: @post.reply_count
    check "Reply quoted" if @post.reply_quoted
    fill_in "Reply to post number", with: @post.reply_to_post_number
    fill_in "Reply to user", with: @post.reply_to_user_id
    fill_in "Score", with: @post.score
    fill_in "Self edits", with: @post.self_edits
    fill_in "Sort order", with: @post.sort_order
    fill_in "Spam count", with: @post.spam_count
    fill_in "Topic", with: @post.topic_id
    check "User deleted" if @post.user_deleted
    fill_in "User", with: @post.user_id
    fill_in "Vbpostid", with: @post.vbpostid
    fill_in "Version", with: @post.version
    check "Via email" if @post.via_email
    check "Wiki" if @post.wiki
    fill_in "Word count", with: @post.word_count
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
