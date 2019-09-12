# frozen_string_literal: true

# github comment settings
github.dismiss_out_of_range_messages

# --------------------------------------------------------------------------------------------------------------------
# Warn when the PR is marked as in progress
# --------------------------------------------------------------------------------------------------------------------
warn('PR is classed as Work in Progress') if github.pr_title.include?('[WIP]') || github.pr_labels.include?('WIP')

# --------------------------------------------------------------------------------------------------------------------
# Warn when there is a big PR
# --------------------------------------------------------------------------------------------------------------------
warn('a large PR') if git.lines_of_code > 500

# --------------------------------------------------------------------------------------------------------------------
# Have you updated CHANGELOG.md?
# --------------------------------------------------------------------------------------------------------------------
changelog.check!

# --------------------------------------------------------------------------------------------------------------------
# Put labels on PRs, this will autofail all PRs without contributor intervention (this is intentional to force someone
# to look at and categorize each PR before merging)
# --------------------------------------------------------------------------------------------------------------------
fail('PR needs labels', sticky: true) if github.pr_labels.empty?

# --------------------------------------------------------------------------------------------------------------------
# Ensure that someone get's assigned to this PR
# --------------------------------------------------------------------------------------------------------------------
warn 'This PR does not have any assignees yet.' unless github.pr_json['assignee']

# --------------------------------------------------------------------------------------------------------------------
# State that this PR will trigger a release build if the target branch is 'release'
# --------------------------------------------------------------------------------------------------------------------
message('Merging this PR will trigger and tag a release build') if github.branch_for_base == 'release'

# --------------------------------------------------------------------------------------------------------------------
# Mainly to encourage writing up some reasoning about the PR, rather than just leaving a title.
# --------------------------------------------------------------------------------------------------------------------
warn('Please provide a summary in the Pull Request description') if github.pr_body.length < 3 && git.lines_of_code > 10
