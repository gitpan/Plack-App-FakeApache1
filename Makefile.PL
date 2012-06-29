
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Plack::App::FakeApache1 needs a more meaningful abstract",
  "AUTHOR" => "Chisel <chisel\@chizography.net>",
  "BUILD_REQUIRES" => {
    "Test::UseAllModules" => 0
  },
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
    "Data::Printer" => 0,
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
    "feature" => 0,
    "parent" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.0.1_05",
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



