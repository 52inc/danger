# danger

Company-wide [danger.systems](https://danger.systems) rules.

## Rules

* Marking PR as "Work in progress" if Title or Label contains "[WIP]"
* Marking PR as LARGE if lines of code changed > 500
* Enforcing changelog to follow the [Intridea](https://github.com/dblock/danger-changelog/blob/master/doc/intridea.md) format
* Fails PR if missing pr_labels
* Warns when PR doesn't haven an assignee
* Warns if target branch is "release" that it will tag and deploy
* Warns if there is insufficient PR description

## Contributing

1. Commit your changes to a new branch that follows the naming pattern: `proposal/[INITIALS]-[SHORT_TITLE]` (i.e. `proposal/dh-verify-description`)
2. Update the version number in `/lib/52inc-danger/version.rb`
3. Open PR with an appropriate title and description
  1. Be sure to assign @r0adkll and add an appropriate label
  2. Also flag @r0adkll for a code review
