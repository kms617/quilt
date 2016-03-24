# Be sure to restart your server when you modify this file.
Rails.application.config.assets.version = (ENV["ASSETS_VERSION"] || "1.0")

Rails.application.config.assets.precompile += %w( jquery.multiselect.en.js )
Rails.application.config.assets.precompile += %w( jquery.multiselect.filter.en.js )
