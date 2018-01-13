require 'buff/ignore'

# NOTE: cd testdir
# (from: https://stackoverflow.com/a/3339889/2885946)
Dir.chdir("testdir")

ignore = Buff::Ignore::IgnoreFile.new('myignore')
list         = Dir.glob("**/*")
ignored_list = ignore.apply(list)
puts("Pre ignored list : #{list}")
puts("Post ignored list: #{ignored_list}")