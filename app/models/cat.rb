class Cat < ApplicationRecord
    validates :birth_date, :name,  presence: true
    validates :color, inclusion: { in: %w(black orange white tabby gray calico)}
    validates :sex, inclusion: { in: %w(M F)}
    
end
