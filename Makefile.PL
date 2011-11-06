
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Templating using pure Perl code",
  "AUTHOR" => "Wolfgang Kinkeldei <wolfgang\@kinkeldei.de>",
  "BUILD_REQUIRES" => {
    "Catalyst" => 0,
    "Catalyst::Controller" => 0,
    "Catalyst::Runtime" => 0,
    "Catalyst::Test" => 0,
    "FindBin" => 0,
    "Path::Class" => 0,
    "Test::Exception" => 0,
    "Test::More" => 0,
    "parent" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Catalyst-View-ByCode",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Catalyst::View::ByCode",
  "PREREQ_PM" => {
    "B::Hooks::EndOfScope" => 0,
    "Catalyst::Component::ApplicationAttribute" => 0,
    "Catalyst::Runtime" => "5.80",
    "Catalyst::Utils" => 0,
    "Catalyst::View" => 0,
    "Devel::Declare" => "0.006008",
    "Exporter" => 0,
    "File::Spec" => 0,
    "FindBin" => "1.49",
    "HTML::Entities" => "1.35",
    "HTML::Tagset" => "3.10",
    "List::Util" => "1.21",
    "MIME::Base64" => "3.07",
    "Moose" => "1.0",
    "MooseX::AttributeHelpers" => "0.23",
    "Path::Class::File" => 0,
    "Scalar::Util" => 0,
    "Test::Builder" => "0.86",
    "Test::Builder::Tester" => "1.18",
    "Test::Exception" => "0.27",
    "Test::Harness" => "3.14",
    "Test::More" => "0.86",
    "UUID::Random" => "0.04",
    "YAML" => "0.68",
    "base" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.16",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


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



