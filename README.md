# datagrepper-gem

A rubygem for interacting with the public Datagrepper API.

# Examples

datagrepper-gem provides a very simple syntax. In fact, currently, the entire
public-facing gem is just one method, `query`, which takes a hash.

```ruby
dg = Datagrepper.new
dg.query :delta => 1.hour, :user => ['codeblock', 'toshio', 'ralph']
dg.query :delta => 3.weeks, :package => ['python-requests', 'httpie']
```

As you can see, when you want to query with multiple parameters (for
[ORing filters](https://apps.fedoraproject.org/datagrepper/)), just pass an
`Array`.

We use the awesome [time-lord](https://github.com/krainboltgreene/time-lord)
gem to provide a nice time-period-based syntax for `delta` (e.g. `2.hours`
or `1.year`).

You can use something like the
[promise](https://github.com/bhuga/promising-future) gem to execute searches
and get a future back, because searches can take some time, and you might not
want to block.

# License

&copy; 2013 Red Hat, Inc.
MIT License (see `LICENSE` for details).
