# Makefile help and .PHONY targets

This is an example of a way to embed help strings into Makefiles.

This Makefile illustrates two techniques:

1. .PHONY targets are specified directory above the target itself, rather than in a single list at the top of the Makefile. When you specify the .PHONY targets in a list at the top of the Makefile, the .PHONY list is very likely to become outdated as you add more targets and forget to add them to the list. By always specifying the .PHONY keyword above phony targets, your .PHONY list always stays up to date.
2. Help for each .PHONY target is embedded in a comment directly after the .PHONY specification. Help is automatically generated by the help target. Targets that don't require help simply leave out the comment.

# Example Invocation

Here is the output from the 'help' target:

    $ make help
    target1	Target 1 help text
    target2	Target 2 help text
    help	Generate list of targets with descriptions
