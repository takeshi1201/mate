class Post < ApplicationRecord
	belongs_to :user
	# attachment :profile_image
	attachment :post_image
  validates :post_image, presence: true
  validates :hashtag_name, presence: true
  validates :comment, presence: true, length: { maximum: 240}
  has_many :notifications, dependent: :destroy
	has_many :likes, dependent: :destroy
	has_many :liked_users, through: :likes, source: :user #liked_usersによって投稿が誰にいいねされているのかを簡単に取得
	def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

  def self.search(search)
    if search
      Post.where(['(hashtag_name LIKE ?) or (comment LIKE ?)', "%#{search}%", "%#{search}%"])
    else
      Post.all
    end
  end
  def create_notification_like!(current_user)
    # すでに「いいね」されているか検索
    temp = Notification.where(["visitor_id = ? and visited_id = ? and post_id = ? and action = ? ", current_user.id, user_id, id, 'like'])
    # いいねされていない場合のみ、通知レコードを作成
    if temp.blank?
      notification = current_user.active_notifications.new(
        post_id: id,
        visited_id: user_id,
        action: 'like'
      )
      # 自分の投稿に対するいいねの場合は、通知済みとする
      if notification.visitor_id == notification.visited_id
        notification.checked = true
      end
      notification.save if notification.valid?
    end
  end

end
