# frozen_string_literal: true

RSpec.describe RdsProxyUnpin::Railtie do
  it "has an initializer" do
    expect(RdsProxyUnpin::Railtie.initializers.count).to eq(1)
  end

  it "has an initializer with the correct name" do
    expect(RdsProxyUnpin::Railtie.initializers.first.name).to eq("rds_proxy_unpin.configure_connection_patch")
  end
end
