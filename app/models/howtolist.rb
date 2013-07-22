class Howtolist < ActiveRecord::Base

  has_many :steps

  attr_accessible :title


  #validates :title, :prescence => true
  #validates :description, :presence => true

end
