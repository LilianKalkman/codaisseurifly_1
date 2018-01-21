require 'rails_helper'

RSpec.describe Song, type: :model do

describe "validations" do
  it { is_expected.to validate_presence_of(:name)}
end

  describe "validations" do
    let(:artist) {create :artist}

    it "is invalid without a name" do
      song = Song.new(name:"", artist: artist)
      song.valid?
      expect(song.errors).to have_key(:name)
    end

  end

  describe "association with artist" do
    let(:artist) {create :artist}

    it "belongs to artist" do
      song = artist.songs.new(name:"Liedje")
      expect(song.artist).to eq(artist)
    end

  end

end
