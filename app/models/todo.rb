class Todo < ApplicationRecord

    # validations
    validates_presence_of :title
end
