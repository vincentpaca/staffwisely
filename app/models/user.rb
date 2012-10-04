class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :full_name, :company

  belongs_to :company
  has_many :comments

  validates_presence_of :full_name
  validate :email_provider

  def attach_company(company)
    self.update_attributes(:company => company)
  end

  private

  def email_provider
    unless self.email.blank?
      email_domain = self.email.split("@").last
      email_providers = %w[@gmail.com @ymail.com @yahoo.com @hotmail.com @live.com @rocketmail.com @yahoomail.com]
      if email_providers.any? { |s| s.include?(email_domain) }
        errors.add(:email,  "must be your company email.")
      end
    end
  end
end
