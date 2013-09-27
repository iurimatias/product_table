

steps:

bundle
rake build
gem install pkg/prime_table-0.0.1.gem
prime_table -n 10

