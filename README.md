# MethodDuplicator

![Capture d’écran du 2022-10-28 09-39-45](https://user-images.githubusercontent.com/16017408/198531690-f78d9434-aa0c-4bec-b455-70256e0de5f6.png)

## Usage

This allows you to see the methods that are never called but are declared.

## Installation

requirement :
 - Rails > 6.1
 - Ruby

Add this line to your application's Gemfile:

```ruby
gem 'method_duplicator'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install method_duplicator
```

## Todo

- [] writing automatic tests (install RSpec)
- [] Filter the methods to have only the one with 0 declarations
- [] Make sure that in the file where the method is declared it can be called without the dot but not in the others
- [] Allow to pass parameters (path for example)
- [] customize colors for a better visibility
- [] optimization of the algo and the performance
- [] Find another way (ctags, intellisense etc) to get the declarations do a complete parsing of the app

## 👨‍💻 Contributing

To contribute to this repository, feel free to create a new fork of the repository and submit a pull request.
- Fork / Clone and select the main branch.
- Create a new branch in your fork.
- Make your changes.
- Commit your changes, and push them.
- Submit a Pull Request here!

## 📋 License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
