Whenever Cookbook
=================
The whenever cookbook default receipe includes the 'install' recipe to:
* install the 'whenever' gem and its dependencies

The whenever cookbook will include the 'wheneverize' recipe IF node attributes include:

```json
{
  "whenever": {
    "update_tasks": true
  }
}
```

The wheneverize recipe:
* creates a default `schedule.rb` file including tasks specified in 'whenever' chef attributes, and,
* runs `whenever --update-crontab`

Requirements
------------

Attributes
----------

Usage
-----
#### whenever::wheneverize

e.g.
Just include `whenever::wheneverize` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[whenever::wheneverize]"
  ]
}
```

Include `whenever` attributes in your node's chef attributes:

```json
"whenever": {
  "gem_version": "0.8.4",
  "whenever_path": "/mnt/mfs-medidata-distro/current",
  "update_tasks": true,
  "whenever_tasks": [{
    "unit_of_time": "1.minutes",
    "task": "command \"echo \'hello\'\""
  }]
}
```

Learn more about [whenever](https://github.com/javan/whenever).

Contributing
------------

TODO
----
* add configurability to schedule.rb as provided by whenever gem

License and Authors
-------------------
Authors: 
Aimee Barciauskas
abarciauskas@mdsol.com
