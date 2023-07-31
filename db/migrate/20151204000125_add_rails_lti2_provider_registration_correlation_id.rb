# frozen_string_literal: true

class AddRailsLti2ProviderRegistrationCorrelationId < ActiveRecord::Migration[6.1]
  def change
    add_column(:rails_lti2_provider_registrations, :correlation_id, :text)
    add_index(:rails_lti2_provider_registrations, :correlation_id, unique: true)
  end
end
