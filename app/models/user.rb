class User < ActiveRecord::Base
  has_many :logs
  has_one :group, class_name: "Group", foreign_key: "teacher_id"
  has_one :avatar, class_name: "Avatar", foreign_key: "user_id"
  belongs_to :team

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  before_save :ensure_authentication_token
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable

  simple_roles

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
