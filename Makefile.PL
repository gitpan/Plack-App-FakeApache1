
use strict;
use warnings;

use 5.010001;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Plack::App::FakeApache1 needs a more meaningful abstract",
  "AUTHOR" => "Chisel <chisel\@chizography.net>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Plack-App-FakeApache1",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Plack::App::FakeApache1",
  "PREREQ_PM" => {
    "Apache::ConfigParser" => 0,
    "Carp" => 0,
    "Data::Dump" => 0,
    "HTTP::Status" => 0,
    "Moose" => 0,
    "Package::DeprecationManager" => 0,
    "Plack::Component" => 0,
    "Plack::Request" => 0,
    "Plack::Response" => 0,
    "Plack::Util" => 0,
    "Plack::Util::Accessor" => 0,
    "Scalar::Util" => 0,
    "Sub::Exporter" => 0,
    "TryCatch" => 0,
    "URI::URL" => 0,
    "attributes" => 0,
    "parent" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "Data::Printer" => 0,
    "FindBin::libs" => 0,
    "Plack::Test" => 0,
    "Test::Deep" => 0,
    "Test::Exception" => 0,
    "Test::More" => 0,
    "Test::UseAllModules" => 0
  },
  "VERSION" => "0.0.3",
  "test" => {
    "TESTS" => "t/*.t t/50-app/*.t"
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



