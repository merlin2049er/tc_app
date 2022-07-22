class Testresult < ApplicationRecord
  belongs_to :testgroup

  validates_presence_of :result

end
