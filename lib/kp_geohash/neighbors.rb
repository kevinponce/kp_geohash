# frozen_string_literal: true

module KpGeohash
  # calc each Neighbor from parent geohash
  class Neighbors
    attr_accessor :parent_hash

    def initialize(parent_hash)
      self.parent_hash = parent_hash
    end

    def top
      KpGeohash::Neighbor.new(parent_hash, 'top').build.neighbor
    end

    def bottom
      KpGeohash::Neighbor.new(parent_hash, 'bottom').build.neighbor
    end

    def right
      KpGeohash::Neighbor.new(parent_hash, 'right').build.neighbor
    end

    def left
      KpGeohash::Neighbor.new(parent_hash, 'left').build.neighbor
    end

    def top_left
      KpGeohash::Neighbor.new(left, 'top').build.neighbor
    end

    def top_right
      KpGeohash::Neighbor.new(right, 'top').build.neighbor
    end

    def bottom_left
      KpGeohash::Neighbor.new(left, 'bottom').build.neighbor
    end

    def bottom_right
      KpGeohash::Neighbor.new(right, 'bottom').build.neighbor
    end
  end
end
