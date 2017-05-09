# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'KpGeohash::Decode' do
  let(:geohash) { 'gbsuv7ztq' }

  it { expect(KpGeohash::Decode.new(geohash).build.lat).to eq(48.668983) }
  it { expect(KpGeohash::Decode.new(geohash).build.lon).to eq(-4.329021) }
end
