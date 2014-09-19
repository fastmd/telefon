class Telephone < ActiveRecord::Base
  
  has_many :numbers
  
  validates :name, presence: true
  validates :sname, presence: true
  validates :company, presence: true
  validates :dolj, presence: true
  
  
  attr_accessible :name, :sname, :fname, :company, :service, :dolj, :rtel, :ltel, :mtel, :otdel
  
end
