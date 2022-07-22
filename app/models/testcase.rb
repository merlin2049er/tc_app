class Testcase < ApplicationRecord
  has_many :testgroup, dependent: :delete_all

  validates_presence_of :title
  #validates_presence_of :description
  validates_presence_of :authored
  validates_presence_of :email
  validates_presence_of :version

end
