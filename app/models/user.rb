class User < ActiveRecord::Base

  enum role: [:admin, :mentor, :mentee]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  acts_as_messageable

  def name
    email
  end

  def mailboxer_email(object)
    email
  end
end
