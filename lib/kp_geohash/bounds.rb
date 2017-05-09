# frozen_string_literal: true

module KpGeohash
  # calc lat/lon bounds for a geohash
  class Bounds
    attr_accessor :geohash, :min, :max, :err

    def initialize(geohash)
      self.geohash = geohash
      self.min = { lat: -90.0, lon: -180.0 }
      self.max = { lat: 90.0, lon: 180.0 }
      self.err = { lat: 90.0, lon: 180.0 }
    end

    def build
      even = true

      geohash.split('').each do |geohash_char|
        geohash_char_decoded = decodemap[geohash_char]

        [16, 8, 4, 2, 1].each do |mask|
          if even
            build_lon(mask, geohash_char_decoded)
          else
            build_lat(mask, geohash_char_decoded)
          end
          even = !even
        end
      end

      self
    end

    private

    def decodemap
      @decodemap ||= BASE32.split('').map.with_index { |char, index| [char, index] }.to_h
    end

    def build_lon(mask, geohash_char_decoded)
      err[:lon] /= 2.0

      if (geohash_char_decoded & mask).zero?
        max[:lon] = (min[:lon] + max[:lon]) / 2.0
      else
        min[:lon] = (min[:lon] + max[:lon]) / 2.0
      end
    end

    def build_lat(mask, geohash_char_decoded)
      err[:lat] /= 2.0

      if (geohash_char_decoded & mask).zero?
        max[:lat] = (min[:lat] + max[:lat]) / 2.0
      else
        min[:lat] = (min[:lat] + max[:lat]) / 2.0
      end
    end
  end
end
