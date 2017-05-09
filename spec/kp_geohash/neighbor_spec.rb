# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'KpGeohash::Neighbor' do
  it { expect(KpGeohash::Neighbor::NEIGHBORS).not_to be nil }

  it { expect(KpGeohash::Neighbor::NEIGHBORS[:right]).not_to be nil }
  it { expect(KpGeohash::Neighbor::NEIGHBORS[:right][:even]).not_to be nil }
  it { expect(KpGeohash::Neighbor::NEIGHBORS[:right][:even]).not_to be nil }
  it { expect(KpGeohash::Neighbor::NEIGHBORS[:right][:odd]).not_to be nil }
  it { expect(KpGeohash::Neighbor::NEIGHBORS[:right][:odd]).not_to be nil }

  it { expect(KpGeohash::Neighbor::NEIGHBORS[:left]).not_to be nil }
  it { expect(KpGeohash::Neighbor::NEIGHBORS[:left][:even]).not_to be nil }
  it { expect(KpGeohash::Neighbor::NEIGHBORS[:left][:even]).not_to be nil }
  it { expect(KpGeohash::Neighbor::NEIGHBORS[:left][:odd]).not_to be nil }
  it { expect(KpGeohash::Neighbor::NEIGHBORS[:left][:odd]).not_to be nil }

  it { expect(KpGeohash::Neighbor::NEIGHBORS[:bottom]).not_to be nil }
  it { expect(KpGeohash::Neighbor::NEIGHBORS[:bottom][:even]).not_to be nil }
  it { expect(KpGeohash::Neighbor::NEIGHBORS[:bottom][:even]).not_to be nil }
  it { expect(KpGeohash::Neighbor::NEIGHBORS[:bottom][:odd]).not_to be nil }
  it { expect(KpGeohash::Neighbor::NEIGHBORS[:bottom][:odd]).not_to be nil }

  it { expect(KpGeohash::Neighbor::NEIGHBORS[:top]).not_to be nil }
  it { expect(KpGeohash::Neighbor::NEIGHBORS[:top][:even]).not_to be nil }
  it { expect(KpGeohash::Neighbor::NEIGHBORS[:top][:even]).not_to be nil }
  it { expect(KpGeohash::Neighbor::NEIGHBORS[:top][:odd]).not_to be nil }
  it { expect(KpGeohash::Neighbor::NEIGHBORS[:top][:odd]).not_to be nil }
end
