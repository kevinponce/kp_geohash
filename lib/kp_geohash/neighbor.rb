# frozen_string_literal: true

module KpGeohash
  # cacl specified neighbor: (right/left/top/bottom)
  class Neighbor
    RIGHT_EVEN_AND_TOP_ODD = 'bc01fg45238967deuvhjyznpkmstqrwx'
    RIGHT_ODD_AND_TOP_EVEN = 'p0r21436x8zb9dcf5h7kjnmqesgutwvy'
    LEFT_ODD_AND_BOTTOM_EVEN = '14365h7k9dcfesgujnmqp0r2twvyx8zb'
    LEFT_EVEN_AND_BOTTOM_ODD = '238967debc01fg45kmstqrwxuvhjyznp'

    NEIGHBORS = {
      right: { even: RIGHT_EVEN_AND_TOP_ODD, odd: RIGHT_ODD_AND_TOP_EVEN },
      top: { even: RIGHT_ODD_AND_TOP_EVEN, odd: RIGHT_EVEN_AND_TOP_ODD },
      left: { even: LEFT_EVEN_AND_BOTTOM_ODD, odd: LEFT_ODD_AND_BOTTOM_EVEN },
      bottom: { even: LEFT_ODD_AND_BOTTOM_EVEN, odd: LEFT_EVEN_AND_BOTTOM_ODD }
    }.freeze
    DIRECTION = %w[right top left bottom].freeze

    attr_accessor :parent_hash, :dir, :neighbor

    def initialize(parent_hash, dir)
      self.parent_hash = parent_hash.downcase
      self.dir = dir.to_sym
      self.neighbor = nil
    end

    def build
      self.neighbor = nil
      return self unless parent_hash && DIRECTION.include?(dir.to_s) && KpGeohash::Borders::BORDERS[dir][type]

      base = parent_hash[0..-2]

      # upates base if border index is found
      base = KpGeohash::Neighbor.new(base, dir).build.neighbor if border_index

      self.neighbor = base + KpGeohash::BASE32[neighbor_index]
      self
    end

    private

    def neighbor_index
      NEIGHBORS[dir][type].index(last_chr)
    end

    def border_index
      KpGeohash::Borders::BORDERS[dir][type].index(last_chr)
    end

    def last_chr
      parent_hash[-1]
    end

    def type
      (parent_hash.length % 2).zero? ? :even : :odd
    end
  end
end
