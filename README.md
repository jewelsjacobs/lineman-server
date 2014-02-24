# lineman-server

This is a plugin to create a simple production server with
[Lineman](http://linemanjs.com) app.

It's based on the [lineman-bower](https://github.com/linemanjs/lineman-bower)

## Usage

First, add the plugin to your lineman project:

```
$ npm install lineman-server --save-dev
```

When you install lineman-bower-install, it should create a default `.bowerrc` (unless one already exists) with the following vendor directory:

```
{
  "directory": "/vendor/bower"
}
```

Also a default `bower.json` (unless one already exists) will be installed.


Third, you'll want to make sure that your bower dependencies don't get checked
into git, so add them to your `.gitignore`:

```
/vendor/bower
```

Next, you'll need a `bower.json` to start pulling down dependencies:

```
{
  "name": "my-app",
  "version": "0.0.1",
  "dependencies": {
    "jquery": "~1.9.0"
  }
}
```

Finally, you'll want to make sure that jquery is made available when Lineman
concatenates your vendor JavaScript libraries. You can do this by extending the
`js.vendor` configuration in `config/files.js` like so:

```
module.exports = require(process.env["LINEMAN_MAIN"]).config.extend("files", {
  js: {
    vendor: [
      "vendor/bower/jquery/jquery.js",
      "vendor/js/**/*.js"  //Note that this glob remains for traditional vendor libs
    ]
  }
});
```

Now, when you run `lineman run` and visit [localhost:8000](http://localhost:8000),
you should see Bower install jQuery and have access to the library on the page.
