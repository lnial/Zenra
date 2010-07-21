package Zenra::Controller::Status;
use Ark 'Controller';
use Try::Tiny;

sub index :Path :Args(1) {
    my ($self, $c, $args) = @_;

    my $status = $c->model('Schema::Status')->find($args)
        or $c->detach('/default');
    $c->detach('/default') if $status->protected;
    $c->stash->{status} = $status;
}

__PACKAGE__->meta->make_immutable;

1;