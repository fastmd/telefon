class Alert < ActiveRecord::Base
  
  
  validates :name, presence: true
  validates :data, presence: true
  validates :desc, presence: true
  validates :dev, presence: true
  validates :worktype, presence: true
  
  attr_accessible :desc, :data, :dev, :name, :worktype
end
