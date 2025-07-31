let src = Logs.Src.create "repro case"
module Log = (val Logs.src_log src)

let setup_logs () =
  Logs.set_reporter (Logs_fmt.reporter ());
  Logs.set_level ~all:true (Some Logs.Debug);
  Logs_threaded.enable ();

  let mtx = Mutex.create () in
  Logs.set_reporter_mutex 
    ~lock:(fun () -> Mutex.lock mtx)
    ~unlock:(fun () -> Mutex.unlock mtx)

let () =
  setup_logs ();
  try
    Logs.app (fun _m -> failwith "uh oh...");
  with
  | _ -> ();

  Logs.app (fun m -> m "it works?")
