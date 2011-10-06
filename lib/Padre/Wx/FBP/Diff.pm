package Padre::Wx::FBP::Diff;

## no critic

# This module was generated by Padre::Plugin::FormBuilder::Perl.
# To change this module edit the original .fbp file and regenerate.
# DO NOT MODIFY THIS FILE BY HAND!

use 5.008;
use strict;
use warnings;
use Padre::Wx ();
use Padre::Wx::Role::Main ();

our $VERSION = '0.91';
our @ISA     = qw{
	Padre::Wx::Role::Main
	Wx::Dialog
};

sub new {
	my $class  = shift;
	my $parent = shift;

	my $self = $class->SUPER::new(
		$parent,
		-1,
		Wx::gettext("Diff"),
		Wx::DefaultPosition,
		[ 431, 345 ],
		Wx::DEFAULT_DIALOG_STYLE | Wx::RESIZE_BORDER,
	);

	$self->{prev_diff} = Wx::BitmapButton->new(
		$self,
		-1,
		Wx::NullBitmap,
		Wx::DefaultPosition,
		Wx::DefaultSize,
		Wx::BU_AUTODRAW,
	);

	$self->{next_diff} = Wx::BitmapButton->new(
		$self,
		-1,
		Wx::NullBitmap,
		Wx::DefaultPosition,
		Wx::DefaultSize,
		Wx::BU_AUTODRAW,
	);

	$self->{left_editor} = Wx::ScintillaTextCtrl->new(
		$self,
		-1,
	);

	$self->{right_editor} = Wx::ScintillaTextCtrl->new(
		$self,
		-1,
	);

	my $bSizer87 = Wx::BoxSizer->new(Wx::HORIZONTAL);
	$bSizer87->Add( $self->{prev_diff}, 0, Wx::ALL, 5 );
	$bSizer87->Add( $self->{next_diff}, 0, Wx::ALL, 5 );

	my $editor_sizer = Wx::BoxSizer->new(Wx::HORIZONTAL);
	$editor_sizer->Add( $self->{left_editor}, 1, Wx::ALL | Wx::EXPAND, 5 );
	$editor_sizer->Add( $self->{right_editor}, 1, Wx::ALL | Wx::EXPAND, 5 );

	my $main_sizer = Wx::BoxSizer->new(Wx::VERTICAL);
	$main_sizer->Add( $bSizer87, 0, Wx::ALIGN_RIGHT, 5 );
	$main_sizer->Add( $editor_sizer, 1, Wx::EXPAND, 5 );

	$self->SetSizer($main_sizer);
	$self->Layout;

	return $self;
}

1;

# Copyright 2008-2011 The Padre development team as listed in Padre.pm.
# LICENSE
# This program is free software; you can redistribute it and/or
# modify it under the same terms as Perl 5 itself.
