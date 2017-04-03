# Makefile help and .PHONY targets

This Makefile illustrates two techniques:

1. .PHONY targets are specified directory above the target itself, rather than in a single list at the top of the Makefile.

When you specify the .PHONY targets in a list at the top of the Makefile, the .PHONY list is very likely to become outdated as you add more targets and forget to add them to the list. By always specifying the .PHONY keyword above phony targets, your .PHONY list always stays up to date.

```Makefile
    .PHONY: target1
    target1:
        @echo "Target 1"
```

2. Help for each .PHONY target is embedded in a comment directly after the .PHONY specification.

Help is automatically generated by the help target. If the target doesn't require help, simply leave out the comment.

```Makefile
    .PHONY: target1 # Target 1 help text
    ...
    .PHONY: target2 # Target 2 help text
    ...
    .PHONY: target3
    ...
    help: # Generate list of targets with descriptions
        @grep '^.PHONY: .* #' Makefile | sed 's/\.PHONY: \(.*\) # \(.*\)/\1 \2/'
```
# Example Invocation

Here is the output from the 'help' target.

    $ make help
    target1	Target 1 help text
    target2	Target 2 help text
    help	Generate list of targets with descriptions
