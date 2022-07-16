class Testgroup < ApplicationRecord

    validates_presence_of :title
    validates_presence_of :description
    validates_presence_of :steps
    validates_presence_of :case

end
