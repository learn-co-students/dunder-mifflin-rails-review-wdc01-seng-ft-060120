class Dog < ApplicationRecord
    has_many :employees

    def self.dog_options
        self.all.map do |dog|
            [dog.name, dog.id]
        end
    end

end
