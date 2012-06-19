package Plack::App::FakeApache1::Constants;
{
  $Plack::App::FakeApache1::Constants::VERSION = '0.0.1_03';
}
{
  $Plack::App::FakeApache1::Constants::DIST = 'Plack-App-FakeApache1';
}
use strict;
use warnings;

use Sub::Exporter -setup => {
    exports => [ qw/
        OK
        DONE
        DECLINED
        REDIRECT

        HTTP_MOVED_TEMPORARILY

        HTTP_METHOD_NOT_ALLOWED
    / ],
    groups => {
        default => [ qw/OK/ ],
        common  => [ qw/OK DONE DECLINED REDIRECT/ ],
        http    => [ qw/HTTP_MOVED_TEMPORARILY/ ],
        '3xx'   => [ qw/HTTP_MOVED_TEMPORARILY/ ],
        '4xx'   => [ qw/HTTP_METHOD_NOT_ALLOWED/ ],
    },
};

# useful values from httpd.h
# added on a 'needed to use' basis

# 3xx status codes
sub HTTP_MOVED_TEMPORARILY  { 302; }

# 4xx status codes
sub HTTP_METHOD_NOT_ALLOWED { 405; }

sub DONE        { -2; }
sub DECLINED    { -1; }
sub OK          {  0; }
sub REDIRECT    { HTTP_MOVED_TEMPORARILY; }

1;

__END__
=pod

=head1 NAME

Plack::App::FakeApache1::Constants

=head1 VERSION

version 0.0.1_03

=head1 AUTHOR

Chisel <chisel@chizography.net>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Chisel Wright.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

