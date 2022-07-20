require 'zeitwerk'

module DatadogAPIClient
  EDGE_CASES = {'iot': 'IoT', 'aws': "AWS"}

  class DatadogAPIClientInflector < Zeitwerk::Inflector
    def camelize(basename, _)
      name_arr = basename.split("_")
      name_arr.each_with_index { |part, i|
        if EDGE_CASES.has_key? part.to_sym
          name_arr[i] = EDGE_CASES[part.to_sym]
        else
          name_arr[i] = name_arr[i].capitalize
        end
      }

      if basename.end_with? "_api"
        name_arr[-1] = "API"
      end

      name_arr.join("")
    end
  end
end