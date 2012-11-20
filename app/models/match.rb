class Match < ActiveRecord::Base
  belongs_to :member, :foreign_key => 'receiver_id'
end