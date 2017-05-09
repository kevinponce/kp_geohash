# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'KpGeohash::Encode' do
  let(:latitude) { 48.668983 }
  let(:longitude) { -4.329021 }
  it { expect(KpGeohash::Encode.new(latitude, longitude, 9).build.geohash).to eq('gbsuv7ztq') }
end
