require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

# task :test => :environment do
#   puts ENV['args']
# end

# task :test, [:arg1, :arg2] => :environment do |t, args|
#   puts args.inspect
# end
# rake test[name,email] #执行rake之后，args接收到的参数形式为hash：{:arg1=>"name", :arg2=>"email"}
desc "检测数据格式是否规范"
namespace :db do
  task :menuList => :environment do
    model = ENV["model"].capitalize
    if selection_model(model)
      p eval(model).take
    end
    if model_attribute(model)
    else
      @not_method.each do |x|
        puts "缺失属性#{x}"
      end
    end
  end
end

#判断是否有该model
def selection_model model
  begin
    eval(model).take
  rescue
    message = $@.split(",")
    puts "#{$!}\n"
    puts message
    return false
  end
  return true
end

#判断该model是否有一下的属性
def model_attribute model
  method_s = [:le_f,:ri_g,:par_e,:chi_l]
  @not_method = []
  0.step(3) do |x|
    begin
      eval(model).new.method_s[x]
    rescue
      @not_method << method_s[x]
      if x == 3
        return false
      end
    end
  end
  return true
end
