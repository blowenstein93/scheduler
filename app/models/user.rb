class User < ActiveRecord::Base
  belongs_to :school
  belongs_to :major
end
