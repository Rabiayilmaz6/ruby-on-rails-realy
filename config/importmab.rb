
pin "application", preload: true
pin "@rails/ujs", to: "rails-ujs.js"
pin "turbolinks", to: "turbolinks.js"
pin "@rails/activestorage", to: "activestorage.js"
pin_all_from "app/javascript/channels", under: "channels"