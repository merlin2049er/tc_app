class Testgroup < ApplicationRecord
    belongs_to :testcase
    has_many :testresult

    validates_presence_of :title
    #validates_presence_of :description
    validates_presence_of :steps
    validates_presence_of :case
    validates_uniqueness_of :case

end
