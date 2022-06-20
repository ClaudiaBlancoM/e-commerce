class Order < ApplicationRecord
  before_create -> { generate_number(hash_size) }

    def generate_number(size)
    self.number ||= loop do
      random = random_candidate(size)
      break random unless self.class.exists?(number: random)
    end
  end
end
  