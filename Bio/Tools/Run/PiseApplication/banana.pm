
=head1 NAME

Bio::Tools::Run::PiseApplication::banana

=head1 SYNOPSIS

  #

=head1 DESCRIPTION

Bio::Tools::Run::PiseApplication::banana

      Bioperl class for:

	BANANA	Bending and curvature plot in B-DNA (EMBOSS)

      Parameters:


		banana (String)


		init (String)


		input (Paragraph)
			input Section

		sequence (Sequence)
			sequence -- puredna [single sequence] (-sequence)
			pipe: seqfile

		advanced (Paragraph)
			advanced Section

		anglesfile (InFile)
			angles file (-anglesfile)

		output (Paragraph)
			output Section

		data (Switch)
			Output as data (-data)

		graph (Excl)
			graph [device to be displayed on] (-graph)

		residuesperline (Integer)
			Number of residues to be displayed on each line (-residuesperline)

		outfile (OutFile)
			outfile (-outfile)

		auto (String)


		psouput (String)


		psresults (Results)


		metaresults (Results)


		dataresults (Results)


		pngresults (Results)


=cut

#'
package Bio::Tools::Run::PiseApplication::banana;

use vars qw(@ISA);
use strict;
use Bio::Tools::Run::PiseApplication;

@ISA = qw(Bio::Tools::Run::PiseApplication);

=head2 new

 Title   : new()
 Usage   : my $banana = Bio::Tools::Run::PiseApplication::banana->new($remote, $email, @params);
 Function: Creates a Bio::Tools::Run::PiseApplication::banana object.
           This method should not be used directly, but rather by 
           a Bio::Factory::Pise instance:
           my $factory = Bio::Factory::Pise->new(-email => 'me@myhome');
           my $banana = $factory->program('banana');
 Example :
 Returns : An instance of Bio::Tools::Run::PiseApplication::banana.

=cut

sub new {
    my ($class, $remote, $email, @params) = @_;
    my $self = $class->SUPER::new($remote, $email);

# -- begin of definitions extracted from /local/gensoft/lib/Pise/5.a/PerlDef/banana.pm

    $self->{COMMAND}   = "banana";
    $self->{VERSION}   = "5.a";
    $self->{TITLE}   = "BANANA";

    $self->{DESCRIPTION}   = "Bending and curvature plot in B-DNA (EMBOSS)";

    $self->{CATEGORIES}   =  [  

         "nucleic:composition",
  ];

    $self->{DOCLINK}   = "http://www.uk.embnet.org/Software/EMBOSS/Apps/banana.html";

    $self->{_INTERFACE_STANDOUT} = undef;
    $self->{_STANDOUT_FILE} = undef;

    $self->{TOP_PARAMETERS}  = [ 
	"banana",
	"init",
	"input",
	"advanced",
	"output",
	"auto",
	"psouput",
	"psresults",
	"metaresults",
	"dataresults",
	"pngresults",

    ];

    $self->{PARAMETERS_ORDER}  = [
	"banana",
	"init",
	"input", 	# input Section
	"sequence", 	# sequence -- puredna [single sequence] (-sequence)
	"advanced", 	# advanced Section
	"anglesfile", 	# angles file (-anglesfile)
	"output", 	# output Section
	"data", 	# Output as data (-data)
	"graph", 	# graph [device to be displayed on] (-graph)
	"residuesperline", 	# Number of residues to be displayed on each line (-residuesperline)
	"outfile", 	# outfile (-outfile)
	"auto",
	"psouput",
	"psresults",
	"metaresults",
	"dataresults",
	"pngresults",

    ];

    $self->{TYPE}  = {
	"banana" => 'String',
	"init" => 'String',
	"input" => 'Paragraph',
	"sequence" => 'Sequence',
	"advanced" => 'Paragraph',
	"anglesfile" => 'InFile',
	"output" => 'Paragraph',
	"data" => 'Switch',
	"graph" => 'Excl',
	"residuesperline" => 'Integer',
	"outfile" => 'OutFile',
	"auto" => 'String',
	"psouput" => 'String',
	"psresults" => 'Results',
	"metaresults" => 'Results',
	"dataresults" => 'Results',
	"pngresults" => 'Results',

    };

    $self->{FORMAT}  = {
	"init" => {
		"perl" => ' "" ',
	},
	"input" => {
	},
	"sequence" => {
		"perl" => '" -sequence=$value -sformat=fasta"',
	},
	"advanced" => {
	},
	"anglesfile" => {
		"perl" => '($value && $value ne $vdef)? " -anglesfile=$value" : ""',
	},
	"output" => {
	},
	"data" => {
		"perl" => '($value)? " -data" : ""',
	},
	"graph" => {
		"perl" => '($value)? " -graph=$value" : ""',
	},
	"residuesperline" => {
		"perl" => '(defined $value && $value != $vdef)? " -residuesperline=$value" : ""',
	},
	"outfile" => {
		"perl" => '($value && $value ne $vdef)? " -outfile=$value" : ""',
	},
	"auto" => {
		"perl" => '" -auto -stdout"',
	},
	"psouput" => {
		"perl" => '" -goutfile=banana"',
	},
	"psresults" => {
	},
	"metaresults" => {
	},
	"dataresults" => {
	},
	"pngresults" => {
	},
	"banana" => {
		"perl" => '"banana"',
	}

    };

    $self->{FILENAMES}  = {
	"psresults" => '*.ps',
	"metaresults" => '*.meta',
	"dataresults" => '*.dat',
	"pngresults" => '*.png *.2 *.3',

    };

    $self->{SEQFMT}  = {
	"sequence" => [8],

    };

    $self->{GROUP}  = {
	"init" => -10,
	"sequence" => 1,
	"anglesfile" => 2,
	"data" => 3,
	"graph" => 4,
	"residuesperline" => 5,
	"outfile" => 6,
	"auto" => 7,
	"psouput" => 100,
	"banana" => 0

    };

    $self->{BY_GROUP_PARAMETERS}  = [
	"init",
	"input",
	"banana",
	"advanced",
	"psresults",
	"output",
	"metaresults",
	"dataresults",
	"pngresults",
	"sequence",
	"anglesfile",
	"data",
	"graph",
	"residuesperline",
	"outfile",
	"auto",
	"psouput",

    ];

    $self->{SIZE}  = {

    };

    $self->{ISHIDDEN}  = {
	"init" => 1,
	"input" => 0,
	"sequence" => 0,
	"advanced" => 0,
	"anglesfile" => 0,
	"output" => 0,
	"data" => 0,
	"graph" => 0,
	"residuesperline" => 0,
	"outfile" => 0,
	"auto" => 1,
	"psouput" => 1,
	"psresults" => 0,
	"metaresults" => 0,
	"dataresults" => 0,
	"pngresults" => 0,
	"banana" => 1

    };

    $self->{ISCOMMAND}  = {
	"init" => 0,
	"input" => 0,
	"sequence" => 0,
	"advanced" => 0,
	"anglesfile" => 0,
	"output" => 0,
	"data" => 0,
	"graph" => 0,
	"residuesperline" => 0,
	"outfile" => 0,
	"auto" => 0,
	"psouput" => 0,
	"psresults" => 0,
	"metaresults" => 0,
	"dataresults" => 0,
	"pngresults" => 0,

    };

    $self->{ISMANDATORY}  = {
	"init" => 0,
	"input" => 0,
	"sequence" => 1,
	"advanced" => 0,
	"anglesfile" => 0,
	"output" => 0,
	"data" => 0,
	"graph" => 0,
	"residuesperline" => 0,
	"outfile" => 0,
	"auto" => 0,
	"psouput" => 0,
	"psresults" => 0,
	"metaresults" => 0,
	"dataresults" => 0,
	"pngresults" => 0,

    };

    $self->{PROMPT}  = {
	"init" => "",
	"input" => "input Section",
	"sequence" => "sequence -- puredna [single sequence] (-sequence)",
	"advanced" => "advanced Section",
	"anglesfile" => "angles file (-anglesfile)",
	"output" => "output Section",
	"data" => "Output as data (-data)",
	"graph" => "graph [device to be displayed on] (-graph)",
	"residuesperline" => "Number of residues to be displayed on each line (-residuesperline)",
	"outfile" => "outfile (-outfile)",
	"auto" => "",
	"psouput" => "",
	"psresults" => "",
	"metaresults" => "",
	"dataresults" => "",
	"pngresults" => "",

    };

    $self->{ISSTANDOUT}  = {
	"init" => 0,
	"input" => 0,
	"sequence" => 0,
	"advanced" => 0,
	"anglesfile" => 0,
	"output" => 0,
	"data" => 0,
	"graph" => 0,
	"residuesperline" => 0,
	"outfile" => 0,
	"auto" => 0,
	"psouput" => 0,
	"psresults" => 0,
	"metaresults" => 0,
	"dataresults" => 0,
	"pngresults" => 0,

    };

    $self->{VLIST}  = {

	"input" => ['sequence',],
	"advanced" => ['anglesfile',],
	"output" => ['data','graph','residuesperline','outfile',],
	"graph" => ['x11','x11','hp7470','hp7470','postscript','postscript','cps','cps','hp7580','hp7580','null','null','data','data','colourps','colourps','text','text','none','none','tek4107t','tek4107t','tekt','tekt','xwindows','xwindows','hpgl','hpgl','xterm','xterm','meta','meta','ps','ps','tek','tek','png','png','tektronics','tektronics',],
    };

    $self->{FLIST}  = {

    };

    $self->{SEPARATOR}  = {

    };

    $self->{VDEF}  = {
	"data" => '0',
	"graph" => 'postscript',
	"residuesperline" => '50',
	"outfile" => 'banana.profile',

    };

    $self->{PRECOND}  = {
	"init" => { "perl" => '1' },
	"input" => { "perl" => '1' },
	"sequence" => { "perl" => '1' },
	"advanced" => { "perl" => '1' },
	"anglesfile" => { "perl" => '1' },
	"output" => { "perl" => '1' },
	"data" => { "perl" => '1' },
	"graph" => {
		"acd" => '@(!$(data))',
	},
	"residuesperline" => { "perl" => '1' },
	"outfile" => { "perl" => '1' },
	"auto" => { "perl" => '1' },
	"psouput" => {
		"perl" => '$graph eq "postscript" || $graph eq "ps" || $graph eq "colourps"  || $graph eq "cps" || $graph eq "png"',
	},
	"psresults" => {
		"perl" => '$graph eq "postscript" || $graph eq "ps" || $graph eq "colourps" || $graph eq "cps"',
	},
	"metaresults" => {
		"perl" => '$graph eq "meta"',
	},
	"dataresults" => {
		"perl" => '$graph eq "data"',
	},
	"pngresults" => {
		"perl" => '$graph eq "png"',
	},

    };

    $self->{CTRL}  = {

    };

    $self->{PIPEOUT}  = {

    };

    $self->{WITHPIPEOUT}  = {

    };

    $self->{PIPEIN}  = {
	"sequence" => {
		 "seqfile" => '1',
	},

    };

    $self->{WITHPIPEIN}  = {

    };

    $self->{ISCLEAN}  = {
	"init" => 0,
	"input" => 0,
	"sequence" => 0,
	"advanced" => 0,
	"anglesfile" => 0,
	"output" => 0,
	"data" => 0,
	"graph" => 0,
	"residuesperline" => 0,
	"outfile" => 0,
	"auto" => 0,
	"psouput" => 0,
	"psresults" => 0,
	"metaresults" => 0,
	"dataresults" => 0,
	"pngresults" => 0,

    };

    $self->{ISSIMPLE}  = {
	"init" => 0,
	"input" => 0,
	"sequence" => 1,
	"advanced" => 0,
	"anglesfile" => 0,
	"output" => 0,
	"data" => 0,
	"graph" => 0,
	"residuesperline" => 0,
	"outfile" => 0,
	"auto" => 0,
	"psouput" => 0,
	"psresults" => 0,
	"metaresults" => 0,
	"dataresults" => 0,
	"pngresults" => 0,

    };

    $self->{PARAMFILE}  = {

    };

    $self->{COMMENT}  = {

    };

    $self->{SCALEMIN}  = {

    };

    $self->{SCALEMAX}  = {

    };

    $self->{SCALEINC}  = {

    };

    $self->{INFO}  = {

    };

# -- end of definitions extracted from /local/gensoft/lib/Pise/5.a/PerlDef/banana.pm



    $self->_init_params(@params);

    return $self;
}



1; # Needed to keep compiler happy

