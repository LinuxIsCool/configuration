# Defined in /tmp/fish.hymHqS/_virtualfish.fish @ line 2
function _virtualfish
  if set -q VIRTUAL_ENV
    echo -n -s (set_color black) "(" (basename "$VIRTUAL_ENV") "🐍)" (set_color normal) " "
  end
end
