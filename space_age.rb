class SpaceAge
  YEAR_IN_SECONDS = 31_556_952.000_000_4
  EARTH_YEARS = {
    earth: 1,
    jupiter: 11.862615,
    mars: 1.8808158,
    mercury: 0.2408467,
    neptune: 164.79132,
    saturn: 29.447498,
    uranus: 84.016846,
    venus: 0.61519726,
  }.freeze

  attr_reader :seconds

  def initialize(seconds)
    @seconds = seconds
  end

  EARTH_YEARS.each_pair do |planet, year|
    define_method("on_#{planet}") { seconds / YEAR_IN_SECONDS / year }
  end
end

module BookKeeping
  VERSION = 1
end
