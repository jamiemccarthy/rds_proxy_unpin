# frozen_string_literal: true

# Override ActiveRecord::ConnectionAdapters::AbstractMysqlAdapter.configure_connection
# to not SET anything that would force connection pinning for RDS Proxy.

require "active_record/connection_adapters/abstract_mysql_adapter"

module RdsProxyUnpin
  module ConfigureConnection
    def configure_connection
      # TKTK pick the parts that make sense, or run the original and
      # strip out the argument to execute()/internal_execute()
    end
  end
end
