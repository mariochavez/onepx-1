module Strategies
  class DatabaseAuthentication < ::Warden::Strategies::Base
    def valid?
      params['identity'].present?
    end

    def authenticate!
      identity = Identity.find_by_email(params['identity']['email']).try(:authenticate, params['identity']['password'])

      return success! identity if identity
      fail! I18n.t('sessions.create.invalid_credentials')
    end
  end
end

Warden::Strategies.add(:database_authentication, Strategies::DatabaseAuthentication)
