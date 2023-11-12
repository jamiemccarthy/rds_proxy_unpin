# frozen_string_literal: true

require "rds_proxy_unpin/version"

RSpec.describe RdsProxyUnpin, "version" do
  it "is defined" do
    expect(RdsProxyUnpin::VERSION).to be
  end

  it "is correct" do
    expect(RdsProxyUnpin::VERSION).to start_with "0."
  end
end
