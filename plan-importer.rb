#!/usr/bin/env ruby

require 'dotenv'
Dotenv.load

require 'csv'
require 'stripe'
Stripe.api_key = ENV["STRIPE_PRIVATE_KEY"]

CSV.foreach(ARGV[0], headers: true, header_converters: :symbol) do |row|
  Stripe::Plan.create(
    amount: row[:amount],
    interval: row[:interval],
    name: row[:name],
    currency: row[:currency],
    id: row[:id]
  )
  puts '.'
end
