## Haskell project with HUnit test support

1) Running the tests: `cavel test`
2) Running the main-application: (src/main/Main.hs as identified as main-is in .cabel-file)
    - `cabal build`
    - `cabal run`




## Configuring this Haskell Project

What I did to get to this point:

```bash
mkdir aoc-2018-haskell
cd aoc-2018-haskell
cabal init -n --is-executable
caval run
```

## Store progress in git

```bash
git init
```

### .gitignore
```
dist

.idea
*.iml
```

```
cabal configure
cabal build
cabal run

```

Add file `LICENSE` to prevent warnings.



### HUnit

Add `test-suite`-section to cabal.

```
test-suite tests
  type:             exitcode-stdio-1.0
  hs-source-dirs:   tests
  Main-is:          Tests.hs
  Build-Depends:    base >= 3 && < 5
                  , tasty
                  , tasty-hunit
                  , hunit-example
```


```
cabal test            // Yields warning because test suites are not enabled

cabal configure --enable-tests
    // Fails due to:
    // cabal: Encountered missing dependencies:
    // hunit-example -any, tasty -any, tasty-hunit -any


cabal install --only-dependencies
cabal update
cabal install hindent
    // Starts the download of the entire internet ;-)

cabal install HUnit
cabal install tasty
cabal install tasty-hunit
    
// Re-run
cabal configure --enable-tests

// Try running the tests:
cabal test    
  
```

