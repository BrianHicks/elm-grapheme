🏗 This library isn't published yet!
It will be soon, but don't depend on it until then.
I'm just opening it up now to get CI going.

Things left to do:

- [ ] make a nice public API
- [ ] minimize the amount of space needed (right now it's ~28.82kb uglified and ~9.81kb gzipped, which I am pretty sure I can get way lower)
- [ ] make it much faster. Right now it's using a naive binary search tree that ends up being linear time (😱.) We can *certainly* do better there.

---

# Graphemes

Do string operations based on grapheme boundaries instead of characters or bytes.
Compare:

```elm
String.toList "🦸🏽‍♂️" -- [ '🦸', '🏽', '\u{200D}', '♂', '\u{FE0F}' ]

String.Graphemes.toList "🦸🏽‍♂️" -- [ "🦸🏽‍♂️" ]
```

## What's going on here?

There are a ton of characters in the unicode standard that can be composed!
So, for example, "ӑ" is composed of "a" and "̆"
You can do this for all kinds of combining marks: ´, ˜, ˆ, et cetera.

If you get really wild here, you end up with z̴̙͒ả̴̫̼̫̀̅ĺ̴̔̿͜g̷̨͇͉̊͐̚o̶̳̣̯͌̓!

Emoji use this system too!
For example, 🦸🏽‍♂️ is composed like this: 🦸 + 🏽 + zero-width joiner (200D) + ♂ + variation selector 16 (FE0F).

For the most part, these compositions take up more than one character despite being displayed on your screen as one!
Further complicating matters, each character can take up between one and four bytes.

This means we can operate at three levels:

1. **the byte level.**
   Here, our base superhero emoji (🦸) takes up several bytes.
   Operations like `String.length` and `String.left` operate here.
2. **the character level.**
   Here, our base superhero emoji is only one character, but our skin tone and gender (🦸🏽‍♂️) take more.
   Operations like `String.foldl` operate here.
3. **the grapheme level.**
   Here, our skin tone and gender are only one character.
   Operations like `String.Graphemess.toList` operate here.

### So when should I use this library?

Basically, if you're dealing with text that the user sees, work at the grapheme level.

…

Not convinced?
Here are some reasons you should do this work with graphemes:

- If you operate at the *byte* level, you will split multi-byte characters into invalid unicode sequences.
  If you do the wrong thing with these sequences, you'll crash your user's browser.

- If you operate at the *character* level, you will split skin tones and genders off of people emoji.
  Your user entered this text pretty precisely in these cases, don't lose their meaning!

- Think you don't need those pesky marks above and below letters?
  Think again!
  They're crucial to understanding in a lot of languages!
  For example, in Spanish, papa (potato) is different than papá (father.)
  Don't make your users call their dad a potato!

- [Hangul, the writing system of Korean](https://en.wikipedia.org/wiki/Hangul), is amazing.
  It's phoenetic and combines characters into a grid to form words.
  For example, honeybee is written "꿀벌".
  If you operate at the *character* level instead of the grapheme level, it'll come out "ㄲㅜㄹㅂㅓㄹ."

## License

This code in this project is licensed under the BSD 3-Clause license, located at LICENSE in the source.

The grapheme break property data used here are © 2019 Unicode®, Inc., and licensed under their [terms of use](http://www.unicode.org/terms_of_use.html).
