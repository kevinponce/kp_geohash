# frozen_string_literal: true

module KpGeohash
  # converts geohash to lat/lon
  class Decode
    attr_accessor :geohash, :lat, :lon, :percision
    def initialize(geohash, percision = 6)
      self.geohash = geohash
      self.lat = nil
      self.lon = nil
      self.percision = percision
    end

    def build
      bounds = KpGeohash::Bounds.new(geohash).build

      self.lat = calc_lat(bounds)
      self.lon = calc_lon(bounds)

      self
    end

    private

    def calc_lat(bounds)
      ((bounds.min[:lat] + bounds.max[:lat]) / 2).round(percision || bounds.err[:lat])
    end

    def calc_lon(bounds)
      ((bounds.min[:lon] + bounds.max[:lon]) / 2).round(percision || bounds.err[:lon])
    end
  end
end
