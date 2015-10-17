# Code Along: Structuring a Ruby Application

## Objectives

1. Understand the file structure of a typical Ruby application.
2. Create the folders and files of a typical Ruby applicatoin. 

## A Typical Ruby Application

In the sections below, read the info under each heading to learn about that particular aspect of the file structure. Follow the instructions in each section to set up your project and get the tests passing. 

A typical Ruby app has the following file structure: 

### `lib/`

The `lib/` directory should be where all of your application's code lives: methods, classes, etc.

We have two simple classes in the files `bar.rb` and `foo.rb`. They should live in `lib/`.

**Make a directory in the top level of this application called `lib`. Move both `foo.rb` and `bar.rb` into the `lib` directory.**

### `config/`

The `config/` directory houses code that, as you can guess, configures your app. One file that often goes in here is...

#### `environment.rb`

Think of `environment.rb` as a manifest for all of your files. It should require all of your executable code (like what's in `lib/`). In turn, other code that executes it should require `environment.rb`; it's easier and cleaner to require just this one file in each of your other files than continuously updating each one whenever you add a new class somewhere.

Below we'll talk about what should be requiring `environment.rb`.

**Make a directory in the top level of this application called `config`.To pass the tests, make an `environment.rb` file and have it require the code in `lib/`.**

### `bin/`

The `bin/` directory holds files that work to execute your code. Where your code is defined should always be separate from where it's executed.

**Make a directory in the top level of this application called `bin`.Create a file called `run.rb` which runs the `Foo` class. Be sure that it requires `environment.rb`, so that it knows about `Foo` and `Bar`.**

### `spec/`

You should already be familiar with what's going on in `spec/`, but let's dive in to what's happening within this folder a bit more. File(s) that hold tests end in "_spec" (like `file_structure_spec.rb`). Note that this is requiring a file called `spec_helper.rb`, which does two things: holds configuration settings that apply to any spec file that requires it, and requires `environment.rb`, so it knows about the code that its testing.


### `.rspec`

`.rspec` is a top-level file that has has settings for the spec executable `rspec`. Experiment with removing the `--color` line and running `rspec`!

### `Gemfile`

The Gemfile is the manifest for all of a program's dependencies, aka, gems.

Running `bundle init` creates a new Gemfile and running `bundle install` creates a `Gemfile.lock` file which locks in gem versions for your program. If you ever need to update a gem's version so it's reflected in the lock file, run `bundle update`.

Get the tests to pass!

## Resources
* [Learn Ruby the Hard Way](http://ruby.learncodethehardway.org/) - [Exercise 46: A Project Skeleton](http://ruby.learncodethehardway.org/book/ex46.html)
* [RubyGems](http://guides.rubygems.org/) - [What is a Gem](http://guides.rubygems.org/what-is-a-gem/)
