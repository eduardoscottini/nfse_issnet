module Nfse
  module Entities
    class TcContato < BaseEntity
      attribute :telefone, Types::String.constrained(max_size: 11)
      attribute :email, Types::String.constrained(max_size: 80)
    end
  end
end