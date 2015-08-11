class User < ActiveRecord::Base
  after_destroy :last_user_detected
  validates :name, presence:true, uniqueness:true
  has_secure_password

  private
    def last_user_detected
      if User.count.zero?
        raise "Can't delete last user"
      end
    end
end
