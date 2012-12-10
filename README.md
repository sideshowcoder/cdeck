# CommandDeck

Command line slide deck

## Installation

    $ git clone git@github.com:sideshowcoder/cdeck.git
    $ cd cdeck && rake build && rake install
    $ thor install bin/cdeck.thor

## Usage

create a folder with .mdown files, numbered as your slides and run CommandDeck 
on this folder

    $ thor cdeck:present ./my_slides

* n to go to next slide
* p to go to the previous slide
* q to quit

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
