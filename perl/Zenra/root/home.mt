? extends 'common/base';

? block title => sub { 'home - ' . super() }

? block content => sub { include('common/statuses') }