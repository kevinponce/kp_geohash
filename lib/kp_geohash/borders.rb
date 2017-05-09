# frozen_string_literal: true

module KpGeohash
  # stores all border look up for right/left/top/bottom
  class Borders
    RIGHT_EVEN_AND_TOP_ODD = 'bcfguvyz'
    RIGHT_ODD_AND_TOP_EVEN = 'prxz'
    LEFT_ODD_AND_BOTTOM_EVEN = '028b'
    LEFT_EVEN_AND_BOTTOM_ODD = '0145hjnp'

    BORDERS = {
      right: { even: RIGHT_EVEN_AND_TOP_ODD, odd: RIGHT_ODD_AND_TOP_EVEN },
      top: { even: RIGHT_ODD_AND_TOP_EVEN, odd: RIGHT_EVEN_AND_TOP_ODD },
      left: { even: LEFT_EVEN_AND_BOTTOM_ODD, odd: LEFT_ODD_AND_BOTTOM_EVEN },
      bottom: { even: LEFT_ODD_AND_BOTTOM_EVEN, odd: LEFT_EVEN_AND_BOTTOM_ODD }
    }.freeze
  end
end
