task :default => :tdoc

task :tdoc do
    sh "rspec -Ilib spec/ppt_spec.rb --format documentation"
end

task :thtml do
    sh "rspec -Ilib spec/ppt_spec.rb --format html > index.html"
end
