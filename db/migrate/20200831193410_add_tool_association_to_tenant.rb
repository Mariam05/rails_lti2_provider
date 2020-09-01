class AddToolAssociationToTenant < ActiveRecord::Migration[6.0]
  def self.up
    add_column :rails_lti2_provider_tools, :tenant_id, :integer
    add_index 'rails_lti2_provider_tools', ['tenant_id'], :name => 'index_tenant_id'
  end

  def self.down
    remove_column :rails_lti2_provider_tools, :tenant_id
  end
end