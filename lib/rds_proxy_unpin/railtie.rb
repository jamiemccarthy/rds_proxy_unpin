# frozen_string_literal: true

require "active_record/relation"
require "active_record/relation/query_methods"
require "rails/railtie"

module RdsProxyUnpin
  class Railtie < ::Rails::Railtie
    initializer "rds_proxy_unpin.configure_connection_patch" do
        ActiveSupport.on_load(:active_record) do
          ::ActiveRecord::ConnectionAdapters::AbstractMysqlAdapter.prepend ::RdsProxyUnpin::ConfigureConnection
        end
    end
  end
end
