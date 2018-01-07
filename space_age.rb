class SpaceAge
  YEAR_IN_SECONDS = 31_556_952.000_000_4
  EARTH_YEARS = {
    jupiter: 11.862615,
    mars: 1.8808158,
    mercury: 0.2408467,
    neptune: 164.79132,
    saturn: 29.447498,
    uranus: 84.016846,
    venus: 0.61519726,
  }.freeze

  def initialize(age_in_seconds)
    @age_in_seconds = age_in_seconds
  end

  EARTH_YEARS.each_pair do |planet, year|
    define_method("on_#{planet}") { on_earth / year }
  end

  def on_earth
    @age_in_seconds / YEAR_IN_SECONDS
  end
end

module BookKeeping
  VERSION = 1
end
