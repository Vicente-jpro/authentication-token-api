class Autorization < ApplicationRecord
    before_save :convert_to_string

    def convert_to_string
      self.token_key = token_key.to_s
    end
end
