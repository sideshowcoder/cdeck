SEED_DIR = File.expand_path(File.join(File.dirname(__FILE__), "/seed"))

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :should
  end

  config.mock_with :rspec do |mocks|
    mocks.syntax = :should
  end
end
