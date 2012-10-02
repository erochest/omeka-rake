
# `omeka-rake`

[![Build Status](https://travis-ci.org/erochest/omeka-rake.png)](https://travis-ci.org/erochest/omeka-rake)

This is a collection of [Rake][rake] tasks for working with [Omeka][omeka].

Currently, this has one class: `SLab::Omeka::Rake::PackageTask`. This builds
packages using the naming conventions for Omeka plugins. (This means that the
ZIP file will be named PLUGIN-VERSION.zip, and it will contain a directory
PLUGIN/.)

Here's an example of how to use it:

```ruby
require 'slab/omeka/rake/package_task'

SLab::Omeka::Rake::PackageTask.new('Something') do |pkg|
  # You'll probably want to set the version programmatically.
  pkg.version = '1.0.0'
  pkg.need_tar_gz = true
  pkg.need_zip = true

  pkg.package_files.include('README.md')
  pkg.package_files.include('plugin.ini')
  pkg.package_files.include('**/*.php')
end
```

[rake]: http://rake.rubyforge.org/
[omeka]: http://omeka.org/

