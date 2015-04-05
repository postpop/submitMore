# submitMore
Wrapper for the PNI specific `qsub` wrapper (`submit`). Allows submitting a queue of parallel jobs. Child jobs will wait for completion of parent jobs. Useful for `prepare`-`process`-`gather` workflows (see [demo](https://github.com/postpop/submitMore/tree/master/demo)).

## Documentation
- require fairly new Matlab version (2013a+)
- need to test more - pretty buggy right now

## Internals
Parses job id of parent job (`getJobID`) and submits child job using the `-hold_jid` argument in `qsub`.
   
