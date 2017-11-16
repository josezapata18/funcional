class Program < ActiveRecord::Base
  belongs_to :faculty
  has_many :metters
end
