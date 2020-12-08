class User < ActiveRecord::Base
    belongs_to :room

    validates_presence_of :first_name, :last_name, :email, :password
  end