

steps:

bundle
rake build
gem install pkg/product_table-0.0.1.gem
product_table -n 10

