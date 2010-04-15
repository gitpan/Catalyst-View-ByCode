
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Catalyst::View::ByCode',
                       'DISTNAME' => 'Catalyst-View-ByCode',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Wolfgang Kinkeldei <wolfgang@kinkeldei.de>',
                       'BUILD_REQUIRES' => {
                                             'Test::More' => '0',
                                             'Test::Exception' => '0',
                                             'parent' => '0',
                                             'FindBin' => '0',
                                             'Catalyst::Controller' => '0',
                                             'Path::Class' => '0',
                                             'Catalyst' => '0',
                                             'Catalyst::Runtime' => '0',
                                             'Catalyst::Test' => '0'
                                           },
                       'ABSTRACT' => 'Templating using pure Perl code',
                       'EXE_FILES' => [],
                       'VERSION' => '0.11',
                       'PREREQ_PM' => {
                                        'Catalyst::View' => '0',
                                        'YAML' => '0.68',
                                        'UUID::Random' => '0.04',
                                        'FindBin' => '1.49',
                                        'File::Spec' => '0',
                                        'Moose::Util::TypeConstraints' => '0',
                                        'Test::Builder::Tester' => '1.18',
                                        'List::Util' => '1.21',
                                        'Test::Builder' => '0.86',
                                        'HTML::Entities' => '1.35',
                                        'Path::Class::File' => '0',
                                        'Moose' => '1.0',
                                        'Test::Harness' => '3.14',
                                        'Test::Exception' => '0.27',
                                        'Catalyst::Component::ApplicationAttribute' => '0',
                                        'overload' => '0',
                                        'Exporter' => '0',
                                        'B::Hooks::EndOfScope' => '0',
                                        'Test::More' => '0.86',
                                        'MooseX::AttributeHelpers' => '0.23',
                                        'MIME::Base64' => '3.07',
                                        'HTML::Tagset' => '3.10',
                                        'Devel::Declare' => '0.005007',
                                        'Catalyst::Utils' => '0',
                                        'Catalyst::Runtime' => '5.80'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



