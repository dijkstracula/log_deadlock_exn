```
(cli) ntaylor@smgrp /t/log_deadlock_exn> OCAMLRUNPARAM=b dune exec -- ./main.exe
Fatal error: exception Sys_error("Mutex.lock: Resource deadlock avoided")
Raised by primitive operation at Dune__exe__Main.setup_logs.(fun) in file "main.ml", line 11, characters 21-35
Called from Logs.report in file "src/logs.ml", line 195, characters 2-26
Called from Dune__exe__Main in file "main.ml", line 21, characters 2-35
(cli) ntaylor@smgrp /t/log_deadlock_exn>
```
