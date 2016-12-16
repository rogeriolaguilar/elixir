defmodule EnumXStreams do
    
    # It generate 4 full lists before generate the result 
    def test(list) do
        list
        |> Enum.map(&(&1*&1))
        |> Enum.with_index  
        |> Enum.map(fn{value, index} -> value - index  end )  
        |> IO.inspect        
    end

    # It reads all file in memory then split into lists
    # before processing it to find the longest
    def longest_line(file) do
        IO.puts File.read!(file)
        |> String.split
        |> Enum.max_by(&String.length/1)
    end


    def testStream(list) do
        list
        |> Stream.map(&(&1*&1))
        |> Stream.with_index
        |> Stream.map(fn{value, index} -> value - index  end )
        |> Enum.to_list
        |> IO.inspect
    end


end

#EnumXStreams.test Enum.to_list 1..99999
EnumXStreams.testStream Enum.to_list 1..99999
#EnumXStreams.longest_line '/usr/share/dict/words'
