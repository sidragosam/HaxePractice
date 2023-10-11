class Main {
	static function main():Void {
		/*trace("Hello, world!");
		trace("Goodbye, world!");

		#if js
			trace("Hello Javascript!");
		#end

		#if python
			trace("Hello Python!");
		#end*/
		
		var appleCount:Int = 10;
		trace("Apples: " + appleCount);

		appleCount = appleCount - 2;
		trace("Apples after eating two: " + appleCount);

		var question = "What's your name?";
		#if !python
			trace(question);
		#end
		#if python
		Sys.println(question);

		var consoleInput = Sys.stdin();
		var name = consoleInput.readLine();

		Sys.println("Hello " + name + "!");
		Sys.println('I\'m glad to see you $name! $name is a very cool name! I like it.');

		question = "How old are you?";
		Sys.println(question);

		consoleInput = Sys.stdin();
		var age = Std.parseInt(consoleInput.readLine());
		checkAge(age);

		question = "What is your hobby?";
		Sys.println(question);

		consoleInput = Sys.stdin();
		var hobby = consoleInput.readLine();
		Sys.println('$hobby is a nice hobby!');
		#end
	}

	static function checkAge(age){
		if (age != null && age > 0) {
			var yearsString = "years";
			if (age == 1) {
				yearsString = "year";
			}
			trace('Oh so you\'re $age years old.');
		} else {
			var question = "That's not a correct age. How old are you?";
			Sys.println(question);
			var consoleInput = Sys.stdin();
			var age = Std.parseInt(consoleInput.readLine());
			checkAge(age);
		}
	}
}
