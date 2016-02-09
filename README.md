# Import Stripe plans from CSV

Reads the Stripe plan export CSV format so can be used to populate the
test environment using an export from the live environment.

Alternatively can be used to import plans from a CSV with the following
columns

`amount,
interval,
name,
currency,
id`

Edit the .env file to include your Stripe Private API key.

## To run
```
bundle
bundle exec importer.rb plans.csv
```
