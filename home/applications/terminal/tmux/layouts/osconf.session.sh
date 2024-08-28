session_root = "~/projects/adharmos"

if initialize_session "osconf"; then
  new_window "nix"
  new_window "apps"
  new_window "shell"

  select_window "nix"
  run_cmd "hx ."

  select_window "apps"
  run_cmd "hx ./home/applications"

  select_window "shell"
  run_cmd "hx ./core/shell"

  select_window "nix"

fi

finalize_and_go_to_session
