package Catalyst::View::ByCode::Markup::Structured;
$Catalyst::View::ByCode::Markup::Structured::VERSION = '0.10';
use Moose;
use MooseX::AttributeHelpers;
extends 'Catalyst::View::ByCode::Markup::Element';

has content => (
    metaclass => 'Collection::Array',
    is => 'rw',
    isa => 'ArrayRef[Object]',
    lazy => 1,
    default => sub { [] },
    provides => {
        push => 'add_content',
        empty => 'has_content',
    },
);

override as_string => sub {
    my $self = shift;
    my $indent_level = shift || 0;
    my $need_break = shift;

    return join('', map {$_->as_string($indent_level+1, $need_break)} @{$self->content});
};

no Moose;
1;
