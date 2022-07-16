class Testcase < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :authored
  validates_presence_of :email
  validates_presence_of :version

end
