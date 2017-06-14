module ArtistHelper
  def generate_slots(start, finish)
    start.upto(finish).map { |t| ["#{t}:00", "#{t}:00"] }
  end
end
