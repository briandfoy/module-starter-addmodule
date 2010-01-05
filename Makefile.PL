use ExtUtils::MakeMaker;

require 5.010;

eval "use Test::Manifest 1.21";

WriteMakefile(
	'NAME'	       => 'Module::Starter::AddModule',
	'ABSTRACT'     => 'Add a module to a distribution',
	'VERSION_FROM' => 'lib/AddModule.pm',
	'LICENSE'      => 'perl',
	'AUTHOR'       => 'brian d foy <bdfoy@cpan.org>',
	
	'PREREQ_PM'    => { 
		'Distribution::Guess::BuildSystem' => '0',
		'Test::More' => '0',
		'parent' => '0',
		},

	'PM'           => {
		'lib/AddModule.pm'         => '$(INST_LIBDIR)/AddModule.pm',
		},

	clean  => { FILES    => q|Module-Starter-AddModule-*| },

	);
