class CreditCard < ActiveRecord::Base
  attr_accessible :expiration, :number, :user_id

  
end
