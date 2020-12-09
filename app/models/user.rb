class User < ActiveRecord::Base
    belongs_to :room
    has_secure_password

    validates_presence_of :first_name, :last_name, :email
  end