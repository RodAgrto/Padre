package Padre::Wx::FBP::Bookmarks;

# This module was generated by Padre::Plugin::FormBuilder::Perl.
# To change this module, edit the original .fbp file and regenerate.
# DO NOT MODIFY BY HAND!

use 5.008;
use strict;
use warnings;
use Padre::Wx ();
use Padre::Wx::Role::Main ();

our $VERSION = '0.85';
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
		Wx::gettext("Bookmarks"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxDEFAULT_DIALOG_STYLE,
	);

	$self->{set_label} = Wx::StaticText->new(
		$self,
		-1,
		Wx::gettext("Set Bookmark:"),
	);

	$self->{set} = Wx::TextCtrl->new(
		$self,
		-1,
		"",
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	$self->{set_line} = Wx::StaticLine->new(
		$self,
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxLI_HORIZONTAL,
	);

	$self->{m_staticText2} = Wx::StaticText->new(
		$self,
		-1,
		Wx::gettext("Existing Bookmarks:"),
	);

	$self->{list} = Wx::ListBox->new(
		$self,
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		[],
		Wx::wxLB_NEEDED_SB | Wx::wxLB_SINGLE,
	);

	my $m_staticline1 = Wx::StaticLine->new(
		$self,
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxLI_HORIZONTAL,
	);

	my $ok = Wx::Button->new(
		$self,
		Wx::wxID_OK,
		Wx::gettext("OK"),
	);
	$ok->SetDefault;

	$self->{delete} = Wx::Button->new(
		$self,
		-1,
		Wx::gettext("Delete"),
	);
	$self->{delete}->Disable;

	Wx::Event::EVT_BUTTON(
		$self,
		$self->{delete},
		sub {
			shift->delete_clicked(@_);
		},
	);

	$self->{delete_all} = Wx::Button->new(
		$self,
		-1,
		Wx::gettext("Delete All"),
	);
	$self->{delete_all}->Disable;

	Wx::Event::EVT_BUTTON(
		$self,
		$self->{delete_all},
		sub {
			shift->delete_all_clicked(@_);
		},
	);

	my $cancel = Wx::Button->new(
		$self,
		Wx::wxID_CANCEL,
		Wx::gettext("Cancel"),
	);

	my $existing = Wx::BoxSizer->new(Wx::wxHORIZONTAL);
	$existing->Add( $self->{m_staticText2}, 0, Wx::wxALL, 5 );

	my $buttons = Wx::BoxSizer->new(Wx::wxHORIZONTAL);
	$buttons->Add( $ok, 0, Wx::wxALL, 5 );
	$buttons->Add( $self->{delete}, 0, Wx::wxALL, 5 );
	$buttons->Add( $self->{delete_all}, 0, Wx::wxALL, 5 );
	$buttons->Add( 20, 0, 1, Wx::wxEXPAND, 5 );
	$buttons->Add( $cancel, 0, Wx::wxALL, 5 );

	my $vsizer = Wx::BoxSizer->new(Wx::wxVERTICAL);
	$vsizer->Add( $self->{set_label}, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxLEFT | Wx::wxRIGHT | Wx::wxTOP, 5 );
	$vsizer->Add( $self->{set}, 0, Wx::wxALL | Wx::wxEXPAND, 5 );
	$vsizer->Add( $self->{set_line}, 0, Wx::wxALL | Wx::wxEXPAND, 5 );
	$vsizer->Add( $existing, 1, Wx::wxEXPAND, 5 );
	$vsizer->Add( $self->{list}, 0, Wx::wxALL | Wx::wxEXPAND, 5 );
	$vsizer->Add( $m_staticline1, 0, Wx::wxALL | Wx::wxEXPAND, 5 );
	$vsizer->Add( $buttons, 0, Wx::wxEXPAND, 5 );

	my $hsizer = Wx::BoxSizer->new(Wx::wxHORIZONTAL);
	$hsizer->Add( $vsizer, 1, Wx::wxALL | Wx::wxEXPAND, 5 );

	$self->SetSizer($hsizer);
	$self->Layout;
	$hsizer->Fit($self);

	$self->{set_label} = $self->{set_label}->GetId;
	$self->{set} = $self->{set}->GetId;
	$self->{set_line} = $self->{set_line}->GetId;
	$self->{list} = $self->{list}->GetId;
	$self->{delete} = $self->{delete}->GetId;
	$self->{delete_all} = $self->{delete_all}->GetId;

	return $self;
}

sub set_label {
	$_[0]->{set_label};
}

sub set {
	$_[0]->{set};
}

sub set_line {
	$_[0]->{set_line};
}

sub list {
	$_[0]->{list};
}

sub delete {
	$_[0]->{delete};
}

sub delete_all {
	$_[0]->{delete_all};
}

sub delete_clicked {
	$_[0]->main->error('Handler method delete_clicked for event delete.OnButtonClick not implemented');
}

sub delete_all_clicked {
	$_[0]->main->error('Handler method delete_all_clicked for event delete_all.OnButtonClick not implemented');
}

1;

# Copyright 2008-2011 The Padre development team as listed in Padre.pm.
# LICENSE
# This program is free software; you can redistribute it and/or
# modify it under the same terms as Perl 5 itself.
