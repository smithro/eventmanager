class Exhibitor < ActiveRecord::Base
  attr_accessible :description, :exhibitor_category_id, :name, :sponsor_id
  
  validates :name, :presence => true
  validates :description, :presence => true
  validates :exhibitor_category_id, :presence => true
    
  belongs_to :exhibitor_category
  belongs_to :sponsor
  has_many :meetings, :through => :sponsor
end
