class User < ActiveRecord::Base
  belongs_to :industry
  acts_as_messageable

  enum role: [:admin, :mentor, :mentee]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end

  # def match_with_mentor
  #   @users.map do |user|
  #     user.role
  #
  #   end
  # end

  def mentors
    if @user.role == "mentee"
      @users.collect do |u|
        if u.role == "mentor"
          u
        end
      end
    else
      puts "are you looking for mentees?"
    end
  end

  ## Messenger ##

  def name
    self.email
  end

  def mailboxer_email(object)
    email
  end
  
end
