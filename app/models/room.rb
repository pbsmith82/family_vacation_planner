class Room < ActiveRecord::Base
    belongs_to :cabin
    has_many :users

  end