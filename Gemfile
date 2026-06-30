source "https://rubygems.org"

# Pinned to the exact commit that built AND uploaded to TestFlight on 2026-06-27.
# The "dev" branch later advanced to 668256001476, which broke the altool upload
# (upload_to_testflight passed an empty --file). Pin the SHA so CI no longer drifts.
gem "fastlane", git: "https://github.com/Artificial-Pancreas/fastlane.git", ref: "70223d34a56e"
gem "abbrev", git: "https://github.com/ruby/abbrev.git", branch: "master"
gem "nkf"
