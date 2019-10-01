defmodule Sincronizer do
  def call_sync(function, params) do
    spawn Sincronizer, :run_async, [function, params, self()]
    
    receive do
      {:callback, result} -> _result
      after 5_000 -> "time out"
    end
  end

  def run_async(function, params, callback_pid) do
    send callback_pid, {:callback, function.(params)}
  end
end

function = fn -> Process.sleep(1_000); "Result!" end
result = Sincronizer.call_sync(function, "Test")

