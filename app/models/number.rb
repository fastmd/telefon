class Number < ActiveRecord::Base
  
  belongs_to :telephone
  attr_accessible :tel, :text
end
