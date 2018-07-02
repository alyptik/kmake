# kmake - Buildroot/Linux-Kernel Build Script

Helper script for creating buildroot/linux-kernel builds outside of main source tree.

## Dependencies

* perl
* bash
* make

The following two repositories must be cloned into your desired root directory:

> buildroot ([git://git.buildroot.net/buildroot.git](git://git.buildroot.net/buildroot.git))

> linux-kernel ([git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git](git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git))

### Optional Dependencies

* [sparse](git://git.kernel.org/pub/scm/devel/sparse/sparse.git) (kernel compile-time static analysis tool)

### Usage
```bash
./kmake {-b (buildroot)|-k (kernel)} [-chmns] [<build args>]
```

After configuring your target build/source directories using the
variables at the top of the `./kmake` script:

linux-kernel:  
`./kmake -k [-chmns]`

buildroot:  
`./kmake -b [-chn]`

### Optional Flags
	-c			append "nconfig" to build targets
	-h			show help/usage information
	-m			(-k only) install kernel modules to output target
	-n			dry-run commands that will be run without building
	-s			(-k only) enable sparse static analysis during kernel build

Build and error logs are appended to "$base/build.log" and "$base/error.log" respectively. Note
that these are never truncated, so you are completely responsible for log management.
