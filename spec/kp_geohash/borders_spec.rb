# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'KpGeohash::Borders' do
  it { expect(KpGeohash::Borders::BORDERS).not_to be nil }

  it { expect(KpGeohash::Borders::BORDERS[:right]).not_to be nil }
  it { expect(KpGeohash::Borders::BORDERS[:right][:even]).not_to be nil }
  it { expect(KpGeohash::Borders::BORDERS[:right][:even]).not_to be nil }
  it { expect(KpGeohash::Borders::BORDERS[:right][:odd]).not_to be nil }
  it { expect(KpGeohash::Borders::BORDERS[:right][:odd]).not_to be nil }

  it { expect(KpGeohash::Borders::BORDERS[:left]).not_to be nil }
  it { expect(KpGeohash::Borders::BORDERS[:left][:even]).not_to be nil }
  it { expect(KpGeohash::Borders::BORDERS[:left][:even]).not_to be nil }
  it { expect(KpGeohash::Borders::BORDERS[:left][:odd]).not_to be nil }
  it { expect(KpGeohash::Borders::BORDERS[:left][:odd]).not_to be nil }

  it { expect(KpGeohash::Borders::BORDERS[:bottom]).not_to be nil }
  it { expect(KpGeohash::Borders::BORDERS[:bottom][:even]).not_to be nil }
  it { expect(KpGeohash::Borders::BORDERS[:bottom][:even]).not_to be nil }
  it { expect(KpGeohash::Borders::BORDERS[:bottom][:odd]).not_to be nil }
  it { expect(KpGeohash::Borders::BORDERS[:bottom][:odd]).not_to be nil }

  it { expect(KpGeohash::Borders::BORDERS[:top]).not_to be nil }
  it { expect(KpGeohash::Borders::BORDERS[:top][:even]).not_to be nil }
  it { expect(KpGeohash::Borders::BORDERS[:top][:even]).not_to be nil }
  it { expect(KpGeohash::Borders::BORDERS[:top][:odd]).not_to be nil }
  it { expect(KpGeohash::Borders::BORDERS[:top][:odd]).not_to be nil }
end
