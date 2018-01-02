#!/usr/bin/env ruby

require 'dotenv'
Dotenv.load

require 'csv'
require 'stripe'
Stripe.api_key = ENV["STRIPE_PRIVATE_KEY"]

CSV.foreach(ARGV[0], headers: true, header_converters: :symbol) do |row|
  Stripe::Coupon.create(
    id: row[:id],
    duration: row[:duration],
    amount_off: row[:amount_off],
    currency: row[:currency],
    duration_in_months: row[:duration_in_months],
    max_redemptions: row[:max_redemptions],
    percent_off: row[:percent_off],
    redeem_by: row[:redeem_by],
  )
  puts '.'
end
