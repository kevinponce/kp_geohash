# frozen_string_literal: true

module KpGeohash
  # calc geo hash from lat/lon
  class Encode
    BITS = [16, 8, 4, 2, 1].freeze

    attr_accessor :latitude, :longitude, :percision, :geohash

    def initialize(latitude, longitude, percision = 12)
      self.latitude = latitude
      self.longitude = longitude
      self.percision = percision
      self.geohash = ''
    end

    def build
      self.geohash = ''
      self.lat_interval = [-90.0, 90.0]
      self.lon_interval = [-180.0, 180.0]
      self.bit = 0
      self.ch = 0

      even = true

      while geohash.length < percision
        if even
          build_longitude
        else
          build_latitude
        end

        even = !even
        if bit < 4
          self.bit += 1
        else
          self.geohash += BASE32[ch]
          self.ch = 0
          self.bit = 0
        end
      end

      self
    end

    protected

    attr_accessor :ch, :bit, :lon_interval, :lat_interval

    def build_longitude
      mid = (lon_interval.first + lon_interval.last) / 2.0
      if longitude > mid
        self.ch |= BITS[self.bit]
        lon_interval[0] = mid
      else
        lon_interval[1] = mid
      end
    end

    def build_latitude
      mid = (lat_interval.first + lat_interval.last) / 2.0
      if latitude > mid
        self.ch |= BITS[bit]
        lat_interval[0] = mid
      else
        lat_interval[1] = mid
      end
    end
  end
end
