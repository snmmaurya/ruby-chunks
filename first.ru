class Hello
	def call env
		puts env
		[200, {"content-type" => "text/html"}, ["Hello there!"]]
	end
end

run Hello.new
