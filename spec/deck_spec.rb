require "spec_helper"
require_relative "../lib/command_deck"

module CommandDeck

  class Slide; end

  describe Deck do
    let(:slide) { slide = double("Slide").as_null_object }
    let(:deck) { Deck.new(slide_dir: SEED_DIR, slide: slide) }

    it "should set the number of slides available" do
      deck.count.should == 2
    end

    it "should return the slide with the requested number" do
      deck.slides = [1,2]
      deck.slide_with_number(1).should == 1
    end

    it "should initialize all slides" do
      slide.should_receive(:new).twice
      Deck.new(slide_dir: SEED_DIR, slide: slide)
    end
  end

end
