class Step < ActiveRecord::Base
  belongs_to :howtolist
  attr_accessible :description, :title
end
