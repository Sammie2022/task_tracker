source "https://rubygems.org"

ruby "3.1.4"

gem "rails", "~> 7.1.3"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"

gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"

# Charts
gem "chartkick"
gem "groupdate"

# Excel export
gem 'caxlsx'
gem "caxlsx_rails"    # renamed from axlsx_rails

# PDF export
gem "wicked_pdf"
gem "wkhtmltopdf-binary"  # Make sure to add wkhtmltopdf-binary for PDF binary

# For seeding fake data
group :development, :test do
  gem "faker", "~> 2.20"
  gem "debug", platforms: %i[mri windows]
end

group :development do
  gem "web-console"
  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
end

gem "bootsnap", require: false
gem "sprockets-rails"
gem "tzinfo-data", platforms: %i[windows jruby]
