class Sponsor < ActiveRecord::Base
  attr_accessible :logo, :url
  
  validates :url, :presence => true
  validates :logo, :presence => true
  
  has_one :exhibitor
  has_and_belongs_to_many :meetings
end
