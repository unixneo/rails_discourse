require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should get new" do
    get new_post_url
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { action_code: @post.action_code, baked_at: @post.baked_at, baked_version: @post.baked_version, bookmark_count: @post.bookmark_count, cook_method: @post.cook_method, cooked: @post.cooked, deleted_at: @post.deleted_at, deleted_by_id: @post.deleted_by_id, edit_reason: @post.edit_reason, hidden: @post.hidden, hidden_at: @post.hidden_at, hidden_reason_id: @post.hidden_reason_id, illegal_count: @post.illegal_count, image_upload_id: @post.image_upload_id, inappropriate_count: @post.inappropriate_count, incoming_link_count: @post.incoming_link_count, last_editor_id: @post.last_editor_id, last_version_at: @post.last_version_at, like_count: @post.like_count, like_score: @post.like_score, locked_by_id: @post.locked_by_id, notify_moderators_count: @post.notify_moderators_count, notify_user_count: @post.notify_user_count, off_topic_count: @post.off_topic_count, percent_rank: @post.percent_rank, post_number: @post.post_number, post_type: @post.post_type, public_version: @post.public_version, quote_count: @post.quote_count, raw: @post.raw, raw_email: @post.raw_email, reads: @post.reads, reply_count: @post.reply_count, reply_quoted: @post.reply_quoted, reply_to_post_number: @post.reply_to_post_number, reply_to_user_id: @post.reply_to_user_id, score: @post.score, self_edits: @post.self_edits, sort_order: @post.sort_order, spam_count: @post.spam_count, topic_id: @post.topic_id, user_deleted: @post.user_deleted, user_id: @post.user_id, vbpostid: @post.vbpostid, version: @post.version, via_email: @post.via_email, wiki: @post.wiki, word_count: @post.word_count } }
    end

    assert_redirected_to post_url(Post.last)
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_url(@post)
    assert_response :success
  end

  test "should update post" do
    patch post_url(@post), params: { post: { action_code: @post.action_code, baked_at: @post.baked_at, baked_version: @post.baked_version, bookmark_count: @post.bookmark_count, cook_method: @post.cook_method, cooked: @post.cooked, deleted_at: @post.deleted_at, deleted_by_id: @post.deleted_by_id, edit_reason: @post.edit_reason, hidden: @post.hidden, hidden_at: @post.hidden_at, hidden_reason_id: @post.hidden_reason_id, illegal_count: @post.illegal_count, image_upload_id: @post.image_upload_id, inappropriate_count: @post.inappropriate_count, incoming_link_count: @post.incoming_link_count, last_editor_id: @post.last_editor_id, last_version_at: @post.last_version_at, like_count: @post.like_count, like_score: @post.like_score, locked_by_id: @post.locked_by_id, notify_moderators_count: @post.notify_moderators_count, notify_user_count: @post.notify_user_count, off_topic_count: @post.off_topic_count, percent_rank: @post.percent_rank, post_number: @post.post_number, post_type: @post.post_type, public_version: @post.public_version, quote_count: @post.quote_count, raw: @post.raw, raw_email: @post.raw_email, reads: @post.reads, reply_count: @post.reply_count, reply_quoted: @post.reply_quoted, reply_to_post_number: @post.reply_to_post_number, reply_to_user_id: @post.reply_to_user_id, score: @post.score, self_edits: @post.self_edits, sort_order: @post.sort_order, spam_count: @post.spam_count, topic_id: @post.topic_id, user_deleted: @post.user_deleted, user_id: @post.user_id, vbpostid: @post.vbpostid, version: @post.version, via_email: @post.via_email, wiki: @post.wiki, word_count: @post.word_count } }
    assert_redirected_to post_url(@post)
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end
