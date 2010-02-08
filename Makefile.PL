
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'CatalystX::Profile',
                       'DISTNAME' => 'CatalystX-Profile',
                       'AUTHOR' => 'Oliver Charles <oliver.g.charles@googlemail.com>',
                       'ABSTRACT' => 'Profile your Catalyst application with Devel::NYTProf',
                       'EXE_FILES' => [],
                       'VERSION' => '0.01',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'Devel::NYTProf' => '3.01',
                                        'namespace::autoclean' => '0.09',
                                        'ExtUtils::MakeMaker' => '6.11',
                                        'Catalyst::Runtime' => '5.80020',
                                        'CatalystX::InjectComponent' => '0.024',
                                        'Moose' => '0.93'
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



