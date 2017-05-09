# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'KpGeohash::Neighbors' do
  let(:geohash) { 'gbsuv7ztq' }

  it { expect(KpGeohash::Neighbors.new(geohash).top).to eq('gbsuv7ztw') }
  it { expect(KpGeohash::Neighbors.new(geohash).bottom).to eq('gbsuv7ztn') }
  it { expect(KpGeohash::Neighbors.new(geohash).left).to eq('gbsuv7ztm') }
  it { expect(KpGeohash::Neighbors.new(geohash).right).to eq('gbsuv7ztr') }
  it { expect(KpGeohash::Neighbors.new(geohash).top_left).to eq('gbsuv7ztt') }
  it { expect(KpGeohash::Neighbors.new(geohash).top_right).to eq('gbsuv7ztx') }
  it { expect(KpGeohash::Neighbors.new(geohash).bottom_left).to eq('gbsuv7ztj') }
  it { expect(KpGeohash::Neighbors.new(geohash).bottom_right).to eq('gbsuv7ztp') }
end
