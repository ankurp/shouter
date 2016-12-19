class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  has_many :shouts

  include Concerns::Following

  def build_shout klass, params
    shouts.build(content: klass.new(params))
  end
end
