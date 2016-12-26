require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  test "when name is empty" do
    artist = Artist.new
    assert_not artist.save
  end
end
