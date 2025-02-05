# hurl(1) completion                            -*- shell-script -*-
_hurl()
{
    local cur prev words cword
    _init_completion || return

    if [[ $cur == -* ]]; then
        COMPREPLY=($(compgen -W '--aws-sigv4 --cacert --cert --key --color --compressed --connect-timeout --connect-to --continue-on-error --cookie --cookie-jar --delay --error-format --fail-at-end --file-root --location --location-trusted --glob --http1.0 --http1.1 --http2 --http3 --ignore-asserts --include --insecure --interactive --ipv4 --ipv6 --json --max-redirs --max-time --netrc --netrc-file --netrc-optional --no-color --no-output --noproxy --output --path-as-is --proxy --report-html --report-junit --report-tap --resolve --retry --retry-interval --ssl-no-revoke --test --to-entry --unix-socket --user --user-agent --variable --variables-file --verbose --very-verbose --help --version' -- "$cur"))
        return
    fi
 
} &&
    complete -F _hurl hurl
# ex: filetype=sh

