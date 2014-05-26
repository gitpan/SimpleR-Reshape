
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Reshape data like R\r",
  "AUTHOR" => "abbypan <abbypan\@gmail.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "SimpleR-Reshape",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "SimpleR::Reshape",
  "PREREQ_PM" => {
    "B::Deparse" => 0
  },
  "TEST_REQUIRES" => {},
  "VERSION" => "0.06",
  "test" => {
    "TESTS" => ""
  }
);


my %FallbackPrereqs = (
  "B::Deparse" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



