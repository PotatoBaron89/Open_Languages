class User < ApplicationRecord
  after_create :set_role

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  rolify

  has_many :course
  validates :email, presence: true

  def to_s
    email
  end

  private

  def set_role
    self.add_role(:user)
  end
end
