Change credentials in database.yml file appropriately

$ rvm 1.9.2
$ rvm gemset create ruby_migrations_example
$ rvm gemset use ruby_migrations_example
$ bundle

$ mysql -e "create database test_database"

$ rake db:migrate
$ mysql test_database
$ describe products;
$ select * from products;
