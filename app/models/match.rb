class Match < ActiveRecord::Base
  belongs_to :user, :foreign_key => 'receiver_id'
end