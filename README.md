# golden-sun
Various data etc. collected for the Golden Sun GBA games

This is a pet project of mine, which was basically inspired by architecture such as LAMP.
These games are the best, and I always wanted a kind of sandbox to test out hypothetical builds etc, as well as collect all of the useful data out in various places together.

To do this, I'll basically be creating a python program/script to make calculations according to the game mechanics.
This will refer to a MySQL database which holds info on stats, monsters, abilities etc.

# Fixed point arithmetic
I discovered recently that the game probably uses fixed point arithmetic (.8) in all its calculations, which means I'm liable to run into rounding errors...

For now, I'm going to proceed with integer calculations and see how accurate a first-draft finished product is. If it's useless, hopefully it won't be too difficult to convert the arithmetic and database.
## UPDATE:
So, after testing the most basic set up which calclulates class and stats with djinn bonuses and some item bonuses, the totals never seem to be out by more than 1. It's maybe 50/50 whether it will be off-by-one or not. So I think it will be fine to leave it as is for now.

# FAQ
- Isn't it overkill to build it in this way?—
*Almost certainly, but I want to learn how to do this anyway so that's irrelevant*
- Where have you got all this data from?—
*`credit.txt` is more precise but basically from [GameFAQs](https://gamefaqs.gamespot.com/gba/561356-golden-sun-the-lost-age/faqs) and the [Golden Sun Wiki](http://goldensun.wikia.com/wiki/Golden_Sun_Wiki).
Special shoutout to Terence Ferguson's guide on GameFAQs.*
- Can I use this?—
*Sure, go ahead. If someone else finds this useful (once it's finished!) I'll be happy to have helped a fellow fan :) Just don't go and pass it off as yours, ok?*
- I have comments/suggestions—
*I'm all ears! Drop me an email or whatever. I've never actually interacted with anyone on GitHub, just pushed stuff out, so it would be welcome.*
