class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all.limit(100)
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:user_id, :topic_id, :post_number, :raw, :cooked, :reply_to_post_number, :reply_count, :quote_count, :deleted_at, :off_topic_count, :like_count, :incoming_link_count, :bookmark_count, :score, :reads, :post_type, :sort_order, :last_editor_id, :hidden, :hidden_reason_id, :notify_moderators_count, :spam_count, :illegal_count, :inappropriate_count, :last_version_at, :user_deleted, :reply_to_user_id, :percent_rank, :notify_user_count, :like_score, :deleted_by_id, :edit_reason, :word_count, :version, :cook_method, :wiki, :baked_at, :baked_version, :hidden_at, :self_edits, :reply_quoted, :via_email, :raw_email, :public_version, :action_code, :locked_by_id, :vbpostid, :image_upload_id)
    end
end
