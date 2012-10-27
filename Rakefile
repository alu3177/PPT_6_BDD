task :default => :tdoc

desc "Ejecuta bin/ppt_main.rb"
task :bin do
	sh "ruby -Ilib bin/ppt_main.rb"
end

desc "Ejecuta los tests con --format documentation"
task :tdoc do
    sh "rspec -Ilib spec/ppt_spec.rb --format documentation"
end

desc "Ejecuta los tests con --format html"
task :thtml do
    sh "rspec -Ilib spec/ppt_spec.rb --format html > index.html"
end

desc "Limpia los ficheros de documentacion generados"
task :clean do
	sh "rm index.html"
end
