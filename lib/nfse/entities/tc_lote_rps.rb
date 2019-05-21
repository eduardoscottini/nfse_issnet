module Nfse
  module Entities
    class TcLoteRps < BaseEntity
      attribute :numero_lote, Types::Integer.constrained(lteq: ('9' * 15).to_i)
      attribute :cpf_cnpj, Nfse::Entities::TcCpfCnpj
      attribute :inscricao_municipal, Types::String.constrained(max_size: 15)
      attribute :quantidade_rps, Types::Integer.constrained(lteq: ('9' * 4).to_i)
      attribute :lista_rps, Types::Array.of(Nfse::Entities::TcRps)

    end
  end
end