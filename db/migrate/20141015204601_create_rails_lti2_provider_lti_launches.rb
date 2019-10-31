class CreateRailsLti2ProviderLtiLaunches < ActiveRecord::Migration[4.2.10]
  def change
    create_table :rails_lti2_provider_lti_launches do |t|
      t.string :tool_proxy_id
      t.string :nonce
      t.text :message

      t.timestamps
    end
  end
end
