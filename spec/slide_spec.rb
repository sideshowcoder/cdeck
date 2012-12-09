require "spec_helper"

require_relative "../lib/command_deck"

module CommandDeck

  describe Slide do
    let(:text) { File.read(File.join(SEED_DIR + "/1.mdown")) }

    it "should load and justify it's content" do
      slide = Slide.new(text: text, width: 21, height: 6)
      slide.content.should == <<END_SLIDE

   Slide number 1
   =============
   Some content

END_SLIDE
    end

  end

end
