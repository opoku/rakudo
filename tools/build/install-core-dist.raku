my constant Staging = "lib/CompUnit/Repository/Staging.rakumod".IO.slurp.EVAL;

my %provides = 
    "Test"                          => "lib/Test.rakumod",
    "NativeCall"                    => "lib/NativeCall.rakumod",
    "NativeCall::Types"             => "lib/NativeCall/Types.rakumod",
    "NativeCall::Compiler::GNU"     => "lib/NativeCall/Compiler/GNU.rakumod",
    "NativeCall::Compiler::MSVC"    => "lib/NativeCall/Compiler/MSVC.rakumod",
    "Pod::To::Text"                 => "lib/Pod/To/Text.rakumod",
    "newline"                       => "lib/newline.rakumod",
    "experimental"                  => "lib/experimental.rakumod",
    "CompUnit::Repository::Staging" => "lib/CompUnit/Repository/Staging.rakumod",
    "Telemetry"                     => "lib/Telemetry.rakumod",
    "snapper"                       => "lib/snapper.rakumod",
    "safe-snapper"                  => "lib/safe-snapper.rakumod",
    "BUILDPLAN"                     => "lib/BUILDPLAN.rakumod",
    "RakuDoc::To::Text"             => "lib/RakuDoc/To/Text.rakumod",
    "L10N"                          => "lib/L10N.rakumod",
    "RakuAST::L10N"                 => "lib/RakuAST/L10N.rakumod",
    "RakuAST::Deparse::L10N"        => "lib/RakuAST/Deparse/L10N.rakumod",
    "RakuAST::Deparse::Highlight::HTML"
      => "lib/RakuAST/Deparse/Highlight/HTML.rakumod",
;

%provides<NativeCall::Dispatcher> = "lib/NativeCall/Dispatcher.rakumod"
    if $*RAKU.compiler.?supports-op('dispatch_v');

if Compiler.backend eq 'moar' {
    %provides<MoarVM::Profiler> = "lib/MoarVM/Profiler.rakumod";
    %provides<MoarVM::Spesh>    = "lib/MoarVM/Spesh.rakumod";
    %provides<MoarVM::SL>       = "lib/MoarVM/SL.rakumod";
    %provides<SL>               = "lib/SL.rakumod";
    %provides<MoarVM::SIL>      = "lib/MoarVM/SIL.rakumod";
    %provides<SIL>              = "lib/SIL.rakumod";
}

for dir $*PROGRAM.parent.sibling("templates").child("L10N") {
    my str $language = .basename;
    next if $language eq 'CORE'
         || $language.ends-with('.md')   # any translator documentation
         || $language.starts-with(".");  # ignore editor temp files

    %provides{"L10N::$language"} = "lib/L10N/$language.rakumod";
    %provides{"RakuAST::Deparse::L10N::$language"}
      = "lib/RakuAST/Deparse/L10N/$language.rakumod";
}

my $prefix := @*ARGS[0];
my $REPO := PROCESS::<$REPO> := Staging.new(
    :$prefix
    :next-repo(
        # Make CompUnit::Repository::Staging available to precomp processes
        CompUnit::Repository::Installation.new(
            :$prefix
            :next-repo(CompUnit::RepositoryRegistry.repository-for-name('core')),
        )
    ),
    :name('core'),
);
my $compiler := Compiler.new;
$REPO.install(
    Distribution::Hash.new(
        {
            name     => $compiler.name,
            auth     => $compiler.auth,
            ver      => $compiler.version,
            provides => %provides,
        },
        prefix => $*CWD,
    ),
    :force,
);

# Precompile CompUnit::Repository::Staging again to give it a source path relative to perl#
my $core-dist := $REPO.resolve(
    CompUnit::DependencySpecification.new(
      :short-name<CompUnit::Repository::Staging>)
).distribution;

my $source-id :=
  $core-dist.meta<provides><CompUnit::Repository::Staging>.values.head<file>;
my $source      := $REPO.prefix.child('sources').child($source-id);
my $source-file := $source.relative($REPO.prefix);

$REPO.precomp-repository.precompile(
        $source,
        CompUnit::PrecompilationId.new($source-id),
        :source-name("core#$source-file (CompUnit::Repository::Staging)"),
        :force,
);

note "    Installed {%provides.elems} core modules in {now - INIT now} seconds!";

# vim: expandtab sw=4
