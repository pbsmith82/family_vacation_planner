class Cabin < ActiveRecord::Base
    has_many :rooms
    has_many :users, through: :rooms

  end