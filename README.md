# hubot-rubygems-search

[![Greenkeeper badge](https://badges.greenkeeper.io/jonrohan/hubot-rubygems-search.svg)](https://greenkeeper.io/)

[![Build Status](https://travis-ci.org/jonrohan/hubot-rubygems-search.svg)](https://travis-ci.org/jonrohan/hubot-rubygems-search)

Use hubot to search rubygems.org for a specific gem. Suggestions welcome read over the [contributing](/CONTRIBUTING.md) guidelines.

See [`src/rubygems-search.coffee`](src/rubygems-search.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-rubygems-search --save`

Then add **hubot-rubygems-search** to your `external-scripts.json`:

```json
[
  "hubot-rubygems-search"
]
```

## Sample Interaction

```
user1>> hubot gem jekyll
hubot>> jekyll — Jekyll is a simple, blog aware, static site generator.
        latest release: 2.5.3
        https://rubygems.org/gems/jekyll
```

## Related

* [hubot-itunes-search](https://github.com/jonrohan/hubot-itunes-search)
* [hubot-slack-reactions](https://github.com/jonrohan/hubot-slack-reactions)

## License

MIT &copy; [Jon Rohan](http://jonrohan.codes)
