class Howtolist < ActiveRecord::Base
  attr_accessible :title

  has_many :steps

  #validates :title, :prescence => true
  #validates :description, :presence => true

end
