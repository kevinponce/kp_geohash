# frozen_string_literal: true

require_relative './kp_geohash/version.rb'
require_relative './kp_geohash/borders.rb'

# kp geohash easily creates geohash from lat/lon
module KpGeohash
  BASE32 = '0123456789bcdefghjkmnpqrstuvwxyz'

  class << self
    def setup
      yield self
    end
  end
end
