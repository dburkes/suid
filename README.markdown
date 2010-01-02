## SUID : A gem to generate sorta unique IDs

  github: [http://github.com/dburkes/suid](http://rdoc.info/projects/dburkes/suid)
  rdocs: [http://rdoc.info/projects/dburkes/suid](http://rdoc.info/projects/dburkes/suid)
  
## Intro

SUIDs are sorta unique IDs. A SUID is similar to a UUID, except that SUIDs

* Are only 11 characters long

* Are semi human-readable

* Don't make URLs look ridiculous

A SUID consists of 11 characters from the set [A-Za-z0-9], so the resulting namespace can hold 62^11 unique values.  That's a lot smaller
namespace than UUIDs, but, if it's good enough for YouTube URLs, I'm willing to bet it's good enough for a lot of other things too.

## Installation

    gem install suid
    
## Usage

    SUID.generate => "bEsrB0H2yw1"
    
    suid = SUID.new
    suid.to_s => "kwNr8FMYAaO"
    suit.to_i => 17229968328302299310
    
## Notes

* You can seed the random number generator if you want with `srand`, but ruby does that automatically when it starts up, so, unless
you purposefully want to create duplicate SUIDs, don't bother.
