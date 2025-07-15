module Debug
  def who_am_i?
    "#{self.class.name} (id: #{self.object_id}): #{self.name}"
  end
end

class Phonograph
  include Debug

  attr_reader :name

  def initialize(name)
    @name = name
  end

end

class EightTrack
  include Debug

  attr_reader :name
  
  def initialize(name)
    @name = name

  end
end

phonograph = Phonograph.new("West End Blues")
eight_track = EightTrack.new("Surrealistic Pillow")

puts phonograph.who_am_i?
puts eight_track.who_am_i?