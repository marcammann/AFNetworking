## Static Library build:

Use the provided build.sh - find a zip in your current workspace's "artifacts" folder.

## Framework build:

Build the AFNetworkingFramework for both, iOS and some Simulator architecture.
Then select the AFNetworkingAggregate target and build it for whatever. It will then aggregate (lipo) the two frameworks into one.
To be found in ${SRCROOT}/build