# Import Stripe plans and coupons from CSV

Reads the Stripe plan/coupon export CSV format so can be used to populate the
test environment using an export from the live environment.

Edit the .env file to include your Stripe Private API key.

## Plans

Alternatively can be used to import plans from a CSV with the following
columns:

`amount,
interval,
name,
currency,
id`

### To run
```
bundle
bundle exec plan-importer.rb plans.csv
```

## Coupons

### To run
```
bundle
bundle exec coupon-importer.rb coupons.csv
```
