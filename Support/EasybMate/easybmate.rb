require "#{ENV["TM_SUPPORT_PATH"]}/lib/scriptmate"

class EasybScript < UserScript
  def lang; 'Easyb' end
  def executable; 'java' end
  def args
    ['-cp', Dir["#{ENV['EASYB_HOME'] || ENV['TM_EASYB']}/*.jar"].join(":"), 'org.disco.easyb.BehaviorRunner']
  end
end

class EasybMate < ScriptMate; end

script = EasybScript.new(STDIN.read)
EasybMate.new(script).emit_html