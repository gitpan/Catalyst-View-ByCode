
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Templating using pure Perl code",
  "AUTHOR" => "Wolfgang Kinkeldei <wolfgang\@kinkeldei.de>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Catalyst-View-ByCode",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Catalyst::View::ByCode",
  "PREREQ_PM" => {
    "Catalyst::Runtime" => "5.80",
    "Devel::Declare" => "0.005007",
    "FindBin" => "1.49",
    "HTML::Entities" => "1.35",
    "HTML::Tagset" => "3.10",
    "List::Util" => "1.21",
    "MIME::Base64" => "3.07",
    "Moose" => "1.0",
    "Test::Builder" => "0.86",
    "Test::Builder::Tester" => "1.18",
    "Test::Exception" => "0.27",
    "Test::Harness" => "3.14",
    "Test::More" => "0.86",
    "UUID::Random" => "0.04",
    "YAML" => "0.68",
    "ok" => 0
  },
  "TEST_REQUIRES" => {},
  "VERSION" => "0.21",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



