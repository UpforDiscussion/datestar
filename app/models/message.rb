class Message < ActiveRecord::Base
  has_many_and_belongs_to :users
end

  
