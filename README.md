# submitMore
wrapper for the PNI specific `qsub` wrapper (`submit*`). allows submitting a queue of parallel jobs. child jobs will wait for completion of parent jobs. perfect for prepare-process-gather workflows.

see [demo](demo/)

## Documentation
- require fairly new Matlab version (2013a+)
- need to test more - pretty buggy right now

## Internals
parses job id of parent job (`getJobID`) and submits child job using the `-hold_jid` argument in `qsub`
   
