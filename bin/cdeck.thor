#!/usr/bin/env ruby
require "terminfo"
require "command_deck"
require "thor"

class Cdeck < Thor

  desc "present [DIRECTORY]", "present a directory of mdown files via the terminal"
  method_options :start => 1
  def present(directory = "./") 
    runner = CommandDeck::Runner.new(slide_dir: directory,
                                     start: options[:start],
                                     screen_height: TermInfo.screen_size[0],
                                     screen_width: TermInfo.screen_size[1])
    runner.start
  end

end
