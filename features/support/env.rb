require "simplecov"
SimpleCov.start

require "db_backup/runner"

def backups_dir
  @backups_dir ||= Dir.mktmpdir
end

at_exit do
  FileUtils.remove_entry backups_dir
end
