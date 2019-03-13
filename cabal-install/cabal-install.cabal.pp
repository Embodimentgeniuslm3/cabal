# lib enabled means that we have internal library: cabal-lib-client
%if CABAL_FLAG_LIB
Cabal-Version:      2.0
%else
Cabal-Version:      >= 1.10
%endif
    $variable
-- NOTE: This file is autogenerated from 'cabal-install.cabal.pp'.
-- DO NOT EDIT MANUALLY.
-- To update this file, edit 'cabal-install.cabal.pp' and run
-- 'make cabal-install-prod' in the project's root folder.
Name:               cabal-install
Version:            2.4.1.0
#
# NOTE: when updating build-depends, don't forget to update version regexps in bootstrap.sh.
#
%def CABAL_BUILDDEPENDS
    build-depends:
        async      >= 2.0      && < 2.3,
        array      >= 0.4      && < 0.6,
        base       >= 4.8      && < 4.13,
        base16-bytestring >= 0.1.1 && < 0.2,
        binary     >= 0.7.3    && < 0.9,
        bytestring >= 0.10.6.0 && < 0.11,
        Cabal      >= 2.4.1.0  && < 2.5,
        containers >= 0.5.6.2  && < 0.7,
        cryptohash-sha256 >= 0.11 && < 0.12,
        deepseq    >= 1.4.1.1  && < 1.5,
        directory  >= 1.2.2.0  && < 1.4,
        echo       >= 0.1.3    && < 0.2,
        edit-distance >= 0.2.2 && < 0.3,
        filepath   >= 1.4.0.0  && < 1.5,
        hashable   >= 1.0      && < 1.3,
        HTTP       >= 4000.1.5 && < 4000.4,
        mtl        >= 2.0      && < 2.3,
        network-uri >= 2.6.0.2 && < 2.7,
        network    >= 2.6      && < 2.9,
        pretty     >= 1.1      && < 1.2,
        process    >= 1.2.3.0  && < 1.7,
        random     >= 1        && < 1.2,
        stm        >= 2.0      && < 2.6,
        tar        >= 0.5.0.3  && < 0.6,
        time       >= 1.5.0.1  && < 1.10,
        zlib       >= 0.5.3    && < 0.7,
        hackage-security >= 0.5.2.2 && < 0.6,
        text       >= 1.2.3    && < 1.3,
        zip-archive >= 0.3.2.5 && < 0.5,
        parsec     >= 3.1.13.0 && < 3.2

    if flag(native-dns)
      if os(windows)
        build-depends: windns      >= 0.1.0 && < 0.2
      else
        build-depends: resolv      >= 0.1.1 && < 0.2

    if os(windows)
      build-depends: Win32 >= 2 && < 3
    else
      build-depends: unix >= 2.5 && < 2.8
%enddef
%def CABAL_COMPONENTCOMMON
    default-language: Haskell2010
    ghc-options:    -Wall -fwarn-tabs
    if impl(ghc >= 8.0)
        ghc-options: -Wcompat
                     -Wnoncanonical-monad-instances
                     -Wnoncanonical-monadfail-instances
%enddef
%def CABAL_BUILDINFO
%if CABAL_FLAG_LIB
    exposed-modules:
%else
    other-modules:
%endif
        Distribution.Client.BuildReports.Anonymous
        Distribution.Client.BuildReports.Storage
        Distribution.Client.BuildReports.Types
        Distribution.Client.BuildReports.Upload
        Distribution.Client.Check
        Distribution.Client.CmdBench
        Distribution.Client.CmdBuild
        Distribution.Client.CmdClean
        Distribution.Client.CmdConfigure
        Distribution.Client.CmdUpdate
        Distribution.Client.CmdErrorMessages
        Distribution.Client.CmdExec
        Distribution.Client.CmdFreeze
        Distribution.Client.CmdHaddock
        Distribution.Client.CmdInstall
        Distribution.Client.CmdInstall.ClientInstallFlags
        Distribution.Client.CmdRepl
        Distribution.Client.CmdRun
        Distribution.Client.CmdTest
        Distribution.Client.CmdLegacy
        Distribution.Client.CmdSdist
        Distribution.Client.Compat.Directory
        Distribution.Client.Compat.ExecutablePath
        Distribution.Client.Compat.FileLock
        Distribution.Client.Compat.FilePerms
        Distribution.Client.Compat.Prelude
        Distribution.Client.Compat.Process
        Distribution.Client.Compat.Semaphore
        Distribution.Client.Config
        Distribution.Client.Configure
        Distribution.Client.Dependency
        Distribution.Client.Dependency.Types
        Distribution.Client.DistDirLayout
        Distribution.Client.Exec
        Distribution.Client.Fetch
        Distribution.Client.FetchUtils
        Distribution.Client.FileMonitor
        Distribution.Client.Freeze
        Distribution.Client.GZipUtils
        Distribution.Client.GenBounds
        Distribution.Client.Get
        Distribution.Client.Glob
        Distribution.Client.GlobalFlags
        Distribution.Client.Haddock
        Distribution.Client.HttpUtils
        Distribution.Client.IndexUtils
        Distribution.Client.IndexUtils.Timestamp
        Distribution.Client.Init
        Distribution.Client.Init.Heuristics
        Distribution.Client.Init.Licenses
        Distribution.Client.Init.Types
        Distribution.Client.Install
        Distribution.Client.InstallPlan
        Distribution.Client.InstallSymlink
        Distribution.Client.JobControl
        Distribution.Client.List
        Distribution.Client.Manpage
        Distribution.Client.Nix
        Distribution.Client.Outdated
        Distribution.Client.PackageHash
        Distribution.Client.PackageUtils
        Distribution.Client.ParseUtils
        Distribution.Client.ProjectBuilding
        Distribution.Client.ProjectBuilding.Types
        Distribution.Client.ProjectConfig
        Distribution.Client.ProjectConfig.Legacy
        Distribution.Client.ProjectConfig.Types
        Distribution.Client.ProjectOrchestration
        Distribution.Client.ProjectPlanOutput
        Distribution.Client.ProjectPlanning
        Distribution.Client.ProjectPlanning.Types
        Distribution.Client.RebuildMonad
        Distribution.Client.Reconfigure
        Distribution.Client.Run
        Distribution.Client.Sandbox
        Distribution.Client.Sandbox.Index
        Distribution.Client.Sandbox.PackageEnvironment
        Distribution.Client.Sandbox.Timestamp
        Distribution.Client.Sandbox.Types
        Distribution.Client.SavedFlags
        Distribution.Client.Security.DNS
        Distribution.Client.Security.HTTP
        Distribution.Client.Setup
        Distribution.Client.SetupWrapper
        Distribution.Client.SolverInstallPlan
        Distribution.Client.SourceFiles
        Distribution.Client.SourceRepoParse
        Distribution.Client.SrcDist
        Distribution.Client.Store
        Distribution.Client.Tar
        Distribution.Client.TargetSelector
        Distribution.Client.Targets
        Distribution.Client.Types
        Distribution.Client.Update
        Distribution.Client.Upload
        Distribution.Client.Utils
        Distribution.Client.Utils.Assertion
        Distribution.Client.Utils.Json
        Distribution.Client.VCS
        Distribution.Client.Win32SelfUpgrade
        Distribution.Client.World
        Distribution.Solver.Compat.Prelude
        Distribution.Solver.Modular
        Distribution.Solver.Modular.Assignment
        Distribution.Solver.Modular.Builder
        Distribution.Solver.Modular.Configured
        Distribution.Solver.Modular.ConfiguredConversion
        Distribution.Solver.Modular.ConflictSet
        Distribution.Solver.Modular.Cycles
        Distribution.Solver.Modular.Dependency
        Distribution.Solver.Modular.Explore
        Distribution.Solver.Modular.Flag
        Distribution.Solver.Modular.Index
        Distribution.Solver.Modular.IndexConversion
        Distribution.Solver.Modular.LabeledGraph
        Distribution.Solver.Modular.Linking
        Distribution.Solver.Modular.Log
        Distribution.Solver.Modular.Message
        Distribution.Solver.Modular.PSQ
        Distribution.Solver.Modular.Package
        Distribution.Solver.Modular.Preference
        Distribution.Solver.Modular.RetryLog
        Distribution.Solver.Modular.Solver
        Distribution.Solver.Modular.Tree
        Distribution.Solver.Modular.Validate
        Distribution.Solver.Modular.Var
        Distribution.Solver.Modular.Version
        Distribution.Solver.Modular.WeightedPSQ
        Distribution.Solver.Types.ComponentDeps
        Distribution.Solver.Types.ConstraintSource
        Distribution.Solver.Types.DependencyResolver
        Distribution.Solver.Types.Flag
        Distribution.Solver.Types.InstSolverPackage
        Distribution.Solver.Types.InstalledPreference
        Distribution.Solver.Types.LabeledPackageConstraint
        Distribution.Solver.Types.OptionalStanza
        Distribution.Solver.Types.PackageConstraint
        Distribution.Solver.Types.PackageFixedDeps
        Distribution.Solver.Types.PackageIndex
        Distribution.Solver.Types.PackagePath
        Distribution.Solver.Types.PackagePreferences
        Distribution.Solver.Types.PkgConfigDb
        Distribution.Solver.Types.Progress
        Distribution.Solver.Types.ResolverPackage
        Distribution.Solver.Types.Settings
        Distribution.Solver.Types.SolverId
        Distribution.Solver.Types.SolverPackage
        Distribution.Solver.Types.SourcePackage
        Distribution.Solver.Types.Variable
        Paths_cabal_install

%if CABAL_FLAG_LIB
    autogen-modules:
        Paths_cabal_install
%endif
    $CABAL_BUILDDEPENDS

    if flag(debug-expensive-assertions)
      cpp-options: -DDEBUG_EXPENSIVE_ASSERTIONS

    if flag(debug-conflict-sets)
      cpp-options: -DDEBUG_CONFLICT_SETS
      build-depends: base >= 4.8

    if flag(debug-tracetree)
      cpp-options: -DDEBUG_TRACETREE
      build-depends: tracetree >= 0.1 && < 0.2
%enddef
#
# Package Description
#
Synopsis:           The command-line interface for Cabal and Hackage.
Description:
    The \'cabal\' command-line program simplifies the process of managing
    Haskell software by automating the fetching, configuration, compilation
    and installation of Haskell libraries and programs.
homepage:           http://www.haskell.org/cabal/
bug-reports:        https://github.com/haskell/cabal/issues
License:            BSD3
License-File:       LICENSE
Author:             Cabal Development Team (see AUTHORS file)
Maintainer:         Cabal Development Team <cabal-devel@haskell.org>
Copyright:          2003-2018, Cabal Development Team
Category:           Distribution
%if CABAL_FLAG_LIB
Build-type:         Simple
%else
Build-type:         Custom
%endif
Extra-Source-Files:
  README.md bash-completion/cabal bootstrap.sh changelog
  tests/README.md

  -- Generated with 'make gen-extra-source-files'
  -- Do NOT edit this section manually; instead, run the script.
  -- BEGIN gen-extra-source-files
  tests/IntegrationTests2/build/keep-going/cabal.project
  tests/IntegrationTests2/build/keep-going/p/P.hs
  tests/IntegrationTests2/build/keep-going/p/p.cabal
  tests/IntegrationTests2/build/keep-going/q/Q.hs
  tests/IntegrationTests2/build/keep-going/q/q.cabal
  tests/IntegrationTests2/build/local-tarball/cabal.project
  tests/IntegrationTests2/build/local-tarball/q/Q.hs
  tests/IntegrationTests2/build/local-tarball/q/q.cabal
  tests/IntegrationTests2/build/setup-custom1/A.hs
  tests/IntegrationTests2/build/setup-custom1/Setup.hs
  tests/IntegrationTests2/build/setup-custom1/a.cabal
  tests/IntegrationTests2/build/setup-custom2/A.hs
  tests/IntegrationTests2/build/setup-custom2/Setup.hs
  tests/IntegrationTests2/build/setup-custom2/a.cabal
  tests/IntegrationTests2/build/setup-simple/A.hs
  tests/IntegrationTests2/build/setup-simple/Setup.hs
  tests/IntegrationTests2/build/setup-simple/a.cabal
  tests/IntegrationTests2/exception/bad-config/cabal.project
  tests/IntegrationTests2/exception/build/Main.hs
  tests/IntegrationTests2/exception/build/a.cabal
  tests/IntegrationTests2/exception/configure/a.cabal
  tests/IntegrationTests2/exception/no-pkg/empty.in
  tests/IntegrationTests2/exception/no-pkg2/cabal.project
  tests/IntegrationTests2/regression/3324/cabal.project
  tests/IntegrationTests2/regression/3324/p/P.hs
  tests/IntegrationTests2/regression/3324/p/p.cabal
  tests/IntegrationTests2/regression/3324/q/Q.hs
  tests/IntegrationTests2/regression/3324/q/q.cabal
  tests/IntegrationTests2/targets/all-disabled/cabal.project
  tests/IntegrationTests2/targets/all-disabled/p.cabal
  tests/IntegrationTests2/targets/benchmarks-disabled/cabal.project
  tests/IntegrationTests2/targets/benchmarks-disabled/p.cabal
  tests/IntegrationTests2/targets/benchmarks-disabled/q/q.cabal
  tests/IntegrationTests2/targets/complex/cabal.project
  tests/IntegrationTests2/targets/complex/q/Q.hs
  tests/IntegrationTests2/targets/complex/q/q.cabal
  tests/IntegrationTests2/targets/empty-pkg/cabal.project
  tests/IntegrationTests2/targets/empty-pkg/p.cabal
  tests/IntegrationTests2/targets/empty/cabal.project
  tests/IntegrationTests2/targets/empty/foo.hs
  tests/IntegrationTests2/targets/exes-disabled/cabal.project
  tests/IntegrationTests2/targets/exes-disabled/p/p.cabal
  tests/IntegrationTests2/targets/exes-disabled/q/q.cabal
  tests/IntegrationTests2/targets/lib-only/p.cabal
  tests/IntegrationTests2/targets/libs-disabled/cabal.project
  tests/IntegrationTests2/targets/libs-disabled/p/p.cabal
  tests/IntegrationTests2/targets/libs-disabled/q/q.cabal
  tests/IntegrationTests2/targets/multiple-exes/cabal.project
  tests/IntegrationTests2/targets/multiple-exes/p.cabal
  tests/IntegrationTests2/targets/multiple-libs/cabal.project
  tests/IntegrationTests2/targets/multiple-libs/p/p.cabal
  tests/IntegrationTests2/targets/multiple-libs/q/q.cabal
  tests/IntegrationTests2/targets/multiple-tests/cabal.project
  tests/IntegrationTests2/targets/multiple-tests/p.cabal
  tests/IntegrationTests2/targets/simple/P.hs
  tests/IntegrationTests2/targets/simple/cabal.project
  tests/IntegrationTests2/targets/simple/p.cabal
  tests/IntegrationTests2/targets/simple/q/QQ.hs
  tests/IntegrationTests2/targets/simple/q/q.cabal
  tests/IntegrationTests2/targets/test-only/p.cabal
  tests/IntegrationTests2/targets/tests-disabled/cabal.project
  tests/IntegrationTests2/targets/tests-disabled/p.cabal
  tests/IntegrationTests2/targets/tests-disabled/q/q.cabal
  tests/IntegrationTests2/targets/variety/cabal.project
  tests/IntegrationTests2/targets/variety/p.cabal
  -- END gen-extra-source-files

  -- Additional manual extra-source-files:
  tests/IntegrationTests2/build/local-tarball/p-0.1.tar.gz


source-repository head
  type:     git
  location: https://github.com/haskell/cabal/
  subdir:   cabal-install

Flag native-dns
  description:  Enable use of the [resolv](https://hackage.haskell.org/package/resolv) & [windns](https://hackage.haskell.org/package/windns) packages for performing DNS lookups
  default:      True
  manual:       True

Flag debug-expensive-assertions
  description:  Enable expensive assertions for testing or debugging
  default:      False
  manual:       True

Flag debug-conflict-sets
  description:  Add additional information to ConflictSets
  default:      False
  manual:       True

Flag debug-tracetree
  description:  Compile in support for tracetree (used to debug the solver)
  default:      False
  manual:       True

%if CABAL_FLAG_LIB
%else
custom-setup
   setup-depends:
       Cabal     >= 2.2,
       base,
       process   >= 1.1.0.1  && < 1.7,
       filepath  >= 1.3      && < 1.5

%endif
#
# Libraries, if CABAL_FLAG_LIB
#
%if CABAL_FLAG_LIB
library cabal-lib-client
    $CABAL_COMPONENTCOMMON
    hs-source-dirs: .
    $CABAL_BUILDINFO

library cabal-install-solver-dsl
    $CABAL_COMPONENTCOMMON
    hs-source-dirs: solver-dsl
    exposed-modules:
        UnitTests.Distribution.Solver.Modular.DSL
    build-depends:
        base,
        Cabal,
        containers,
        -- TODO: depend on cabal-install-solver only
        cabal-lib-client
%endif
#
# Executable
#
executable cabal
    main-is:        Main.hs
    hs-source-dirs: main
    $CABAL_COMPONENTCOMMON

    ghc-options: -rtsopts -threaded

    -- On AIX, some legacy BSD operations such as flock(2) are provided by libbsd.a
    if os(aix)
        extra-libraries: bsd
%if CABAL_FLAG_LIB
    build-depends:
        cabal-lib-client,
        Cabal,
        base,
        directory,
        filepath

    other-modules: Paths_cabal_install
%else
    hs-source-dirs: .
    $CABAL_BUILDINFO
%endif
#
# MONOLITHIC exe additions
#
%if CABAL_FLAG_LIB
%if CABAL_FLAG_MONOLITHIC
    -- Monolithic: tests fused into executable
    hs-source-dirs: tests
    other-modules:
        UnitTests
        MemoryUsageTests
        SolverQuickCheck
        IntegrationTests2

        UnitTests.Distribution.Client.ArbitraryInstances
        UnitTests.Distribution.Client.FileMonitor
        UnitTests.Distribution.Client.Get
        UnitTests.Distribution.Client.GZipUtils
        UnitTests.Distribution.Client.Glob
        UnitTests.Distribution.Client.IndexUtils.Timestamp
        UnitTests.Distribution.Client.InstallPlan
        UnitTests.Distribution.Client.JobControl
        UnitTests.Distribution.Client.ProjectConfig
        UnitTests.Distribution.Client.Sandbox
        UnitTests.Distribution.Client.Sandbox.Timestamp
        UnitTests.Distribution.Client.Store
        UnitTests.Distribution.Client.Tar
        UnitTests.Distribution.Client.Targets
        UnitTests.Distribution.Client.UserConfig
        UnitTests.Distribution.Client.VCS
        UnitTests.Distribution.Solver.Modular.Builder
        UnitTests.Distribution.Solver.Modular.DSL.TestCaseUtils
        UnitTests.Distribution.Solver.Modular.MemoryUsage
        UnitTests.Distribution.Solver.Modular.QuickCheck
        UnitTests.Distribution.Solver.Modular.QuickCheck.Utils
        UnitTests.Distribution.Solver.Modular.RetryLog
        UnitTests.Distribution.Solver.Modular.Solver
        UnitTests.Distribution.Solver.Modular.WeightedPSQ
        UnitTests.Options
        UnitTests.TempTestDir

    cpp-options: -DMONOLITHIC
    build-depends:
        Cabal      == 2.4.*,
        cabal-install-solver-dsl,
        QuickCheck >= 2.8.2,
        array,
        async,
        bytestring,
        containers,
        deepseq,
        directory,
        edit-distance,
        filepath,
        hashable,
        mtl,
        network,
        network-uri,
        pretty-show >= 1.6.15,
        random,
        tagged,
        tar,
        tasty >= 1.1.0.3 && < 1.2,
        tasty-hunit >= 0.10,
        tasty-quickcheck,
        time,
        zlib
%endif
%endif
#
# Test-suites
# disable if we don't configure with an (internal) libs
#
%if CABAL_FLAG_LIB
#
# Small, fast running tests.
#
Test-Suite unit-tests
  type: exitcode-stdio-1.0
  main-is: UnitTests.hs
  hs-source-dirs: tests
  ghc-options: -Wall -fwarn-tabs -main-is UnitTests
  other-modules:
    UnitTests.Distribution.Client.ArbitraryInstances
    UnitTests.Distribution.Client.Targets
    UnitTests.Distribution.Client.FileMonitor
    UnitTests.Distribution.Client.Get
    UnitTests.Distribution.Client.Glob
    UnitTests.Distribution.Client.GZipUtils
    UnitTests.Distribution.Client.Sandbox
    UnitTests.Distribution.Client.Sandbox.Timestamp
    UnitTests.Distribution.Client.Store
    UnitTests.Distribution.Client.Tar
    UnitTests.Distribution.Client.UserConfig
    UnitTests.Distribution.Client.ProjectConfig
    UnitTests.Distribution.Client.JobControl
    UnitTests.Distribution.Client.IndexUtils.Timestamp
    UnitTests.Distribution.Client.InstallPlan
    UnitTests.Distribution.Client.VCS
    UnitTests.Distribution.Solver.Modular.Builder
    UnitTests.Distribution.Solver.Modular.RetryLog
    UnitTests.Distribution.Solver.Modular.Solver
    UnitTests.Distribution.Solver.Modular.DSL.TestCaseUtils
    UnitTests.Distribution.Solver.Modular.WeightedPSQ
    UnitTests.Options
    UnitTests.TempTestDir
  build-depends:
        array,
        base,
        async,
        bytestring,
        cabal-lib-client,
        cabal-install-solver-dsl,
        Cabal,
        containers,
        deepseq,
        mtl,
        random,
        directory,
        filepath,
        tar,
        time,
        zlib,
        network-uri,
        network,
        tasty >= 1.1.0.3 && < 1.2,
        tasty-hunit >= 0.10,
        tasty-quickcheck,
        tagged,
        QuickCheck >= 2.8.2

  ghc-options: -threaded

  default-language: Haskell2010

#
# Tests to run with a limited stack and heap size
#
Test-Suite memory-usage-tests
  type: exitcode-stdio-1.0
  main-is: MemoryUsageTests.hs
  hs-source-dirs: tests
  ghc-options: -Wall -fwarn-tabs "-with-rtsopts=-M4M -K1K" -main-is MemoryUsageTests
  other-modules:
    UnitTests.Distribution.Solver.Modular.DSL.TestCaseUtils
    UnitTests.Distribution.Solver.Modular.MemoryUsage
    UnitTests.Options
  build-depends:
        base,
        async,
        Cabal,
        cabal-lib-client,
        cabal-install-solver-dsl,
        containers,
        deepseq,
        tagged,
        tasty >= 1.1.0.3 && < 1.2,
        tasty-hunit >= 0.10

  ghc-options: -threaded

  default-language: Haskell2010

#
# Slow solver tests
#
Test-Suite solver-quickcheck
  type: exitcode-stdio-1.0
  main-is: SolverQuickCheck.hs
  hs-source-dirs: tests
  ghc-options: -Wall -fwarn-tabs -main-is SolverQuickCheck
  other-modules:
    UnitTests.Distribution.Solver.Modular.QuickCheck
    UnitTests.Distribution.Solver.Modular.QuickCheck.Utils
  build-depends:
        base,
        async,
        Cabal,
        cabal-lib-client,
        cabal-install-solver-dsl,
        containers,
        deepseq >= 1.2,
        hashable,
        random,
        tagged,
        tasty >= 1.1.0.3 && <1.2,
        tasty-quickcheck,
        QuickCheck >= 2.8.2,
        pretty-show >= 1.6.15

  ghc-options: -threaded

  default-language: Haskell2010

#
# Integration tests that use the cabal-install code directly
# but still build whole projects
#
test-suite integration-tests2
  type: exitcode-stdio-1.0
  main-is: IntegrationTests2.hs
  hs-source-dirs: tests
  ghc-options: -Wall -fwarn-tabs -main-is IntegrationTests2
  other-modules:
  build-depends:
        base,
        Cabal,
        cabal-lib-client,
        containers,
        deepseq,
        directory,
        edit-distance,
        filepath,
        tasty >= 1.1.0.3 && < 1.2,
        tasty-hunit >= 0.10,
        tagged

  ghc-options: -threaded
  default-language: Haskell2010

%endif
