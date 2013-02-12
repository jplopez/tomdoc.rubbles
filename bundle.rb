require 'ruble'

bundle do |bundle|
	bundle.display_name = 'adxion.rubbles'
	bundle.author = 'My Name'
	bundle.copyright = <<END
(c) Copyright 2011 sample.org. Distributed under MIT license.
END

	bundle.description = <<END
Sample description

END

	# uncomment with the url to the git repo if one exists
	# bundle.repository = 'git@github.com:username/repo-name.git'

	# Use Commands > Bundle Development > Insert Bundle Section > Menu
	# to easily add new sections
	bundle.menu 'adxion.rubbles' do |menu|
		menu.command 'Tom doc Method'
		menu.command 'Tom doc Constant'
		menu.command 'Tom doc Class'
		# menu.separator
		# menu.menu 'Sub Menu' do |sub_menu|
			# sub_menu.command 'Sample Snippet'
		# end
	end

	snippet "Tom doc Method" do |snip|
		snip.trigger = "tomdoc_method"
		snip.expansion = "# Public : ${1:method_description} \n"
		snip.expansion += "# \n"
		snip.expansion += "# Author : ${2:author}@neonline.cl \n"
		snip.expansion += "# \n"
		snip.expansion += "# Parameters : \n"
		snip.expansion += "# - ${3:parameters} \n"
		snip.expansion += "# \n"
		snip.expansion += "# Examples : \n"
		snip.expansion += "# \t${4:method_call} \n"
		snip.expansion += "# \t# => ${5:method_return} \n"
		snip.expansion += "# \n"
		snip.expansion += "# Returns ${6:returns}\n"
		snip.expansion += "# \n"
		snip.expansion += "# Signature :\n"
		snip.expansion += "# \t${7:signature} \n"
	end

	snippet "Tom doc Constant" do |snip|
		snip.trigger = "tomdoc_cons"
		snip.expansion = "# Public : ${1:constant_description} \n"
	end

	snippet "Tom doc Class" do |snip|
		snip.trigger = "tomdoc_class"
		snip.expansion = "# Public : ${1:method_description} \n"
		snip.expansion += "# \n"
		snip.expansion += "# Author : ${2:author}@neonline.cl \n"
		snip.expansion += "# \n"
		snip.expansion += "# Examples : \n"
		snip.expansion += "# \t${3:class_usage} \n"
		snip.expansion += "# \t# => ${4:class_usage_return} \n"
	end

end