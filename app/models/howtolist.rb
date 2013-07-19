class Howtolist < ActiveRecord::Base
  attr_accessible :title

  has_many :steps

end
