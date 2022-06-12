require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
  driven_by Capybara.javascript_driver

  include Warden::Test::Helpers
  include StripeSystemTestHelper
  include TrixSystemTestHelper

  include BetterRailsSystemTests
  include CupriteHelpers

  include MagicTest::Support if ENV["MAGIC_TEST"].present?
end
