worker_processes 2
timeout 3600

APP_PATH = File.expand_path("../..", __FILE__)
working_directory APP_PATH

listen "/tmp/unicorn.direct.sock", :backlog => 64

stderr_path APP_PATH + "/log/unicorn.stderr.log"
stdout_path APP_PATH + "/log/unicorn.stdout.log"

pid APP_PATH + "/tmp/pids/unicorn.pid"
