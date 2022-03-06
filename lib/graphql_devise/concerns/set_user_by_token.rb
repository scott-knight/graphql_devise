# frozen_string_literal: true

module GraphqlDevise
  module SetUserByToken
    extend ActiveSupport::Concern

    included do
      include DeviseTokenAuth::Concerns::SetUserByToken
      include GraphqlDevise::Concerns::AdditionalControllerMethods
    end
  end
end
