class Request < ApplicationRecord
  enum status: [:pending, :processed]
end
