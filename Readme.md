## Usage

Use twitter_checker to poll a Twitter account for certain search terms or Regular Expressions. All strings are compared after being lowercased.

$ruby twitter_checker.rb __"useraccount" "regex to look for"__

Examples:
<pre>
$ruby twitter_checker.rb MondoNews olly|moss|black|widow

$ruby twitter_checker.rb noelcurtis event

$ruby twitter_checker.rb scottpenrose DPAC
</pre>