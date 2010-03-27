use inc::Module::Install;

name     'Catalyst-View-ByCode';
all_from 'lib/Catalyst/View/ByCode.pm';
author   q{Wolfgang Kinkeldei <wolfgang@kinkeldei.de>};
license  'perl';

build_requires 'Test::More';

auto_install;

WriteAll;

