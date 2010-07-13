require 'aruba'

module ArubaOverrides
  def detect_ruby_script(cmd)
    if cmd =~ /^impromptu /
      "ruby -I../../ -S ../../bin/#{cmd}"
    else
      super(cmd)
    end
  end
end

World(ArubaOverrides)

