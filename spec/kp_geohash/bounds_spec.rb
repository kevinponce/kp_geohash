# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'KpGeohash::Bounds' do
  let(:geohash) { 'gbsuv7ztq' }

  it { expect(KpGeohash::Bounds.new(geohash).build.min[:lat]).to eq(48.66896152496338) }
  it { expect(KpGeohash::Bounds.new(geohash).build.min[:lon]).to eq(-4.329042434692383) }

  it { expect(KpGeohash::Bounds.new(geohash).build.max[:lat]).to eq(48.66900444030762) }
  it { expect(KpGeohash::Bounds.new(geohash).build.max[:lon]).to eq(-4.3289995193481445) }

  it { expect(KpGeohash::Bounds.new(geohash).build.err[:lat]).to eq(2.1457672119140625e-05) }
  it { expect(KpGeohash::Bounds.new(geohash).build.err[:lon]).to eq(2.1457672119140625e-05) }
end
