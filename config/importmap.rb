# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"

# ❌ Remove the incorrect @kurkle/color pin
# chart.js internally handles this, and Importmap resolves it
#pin "@kurkle/color", to: "@kurkle--color.js" # @0.3.4
