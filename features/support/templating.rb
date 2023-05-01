require 'json'

EDGE_CASES = JSON.parse(File.read(File.join(__dir__, "..", "..", ".generator", "src", "generator", "replacement.json")))
REPLACED_KEYS = EDGE_CASES.keys.map { |k| Regexp.quote(k) }.join("|")

class Object
  def lookup(dotted_path)
    result = self
    dotted_path.split('.').each do |dot_part|
      dot_part.split('[').each do |part|
        if part.include?(']')
          index = part.to_i
          result = result[index]
        else
          case result
          when Hash
            result = result.include?(part.to_sym) ? result[part.to_sym] : result[part]
          else
            result = result.send(part.snakecase)
          end
        end
      end
    end

    result
  end
end

class String
  def snakecase
    gsub(/#{REPLACED_KEYS}/, EDGE_CASES).
    gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2').
      gsub(/([a-z\d])([A-Z])/, '\1_\2').
      tr('-', '_').
      gsub(/\W+/, '_').
      gsub(/_+$/, '').
      gsub(/\s/, '_').
      gsub(/__+/, '_').
      downcase
  end

  def to_parameter
    name = snakecase
    name = '_' + snakecase if name == "end"
    name
  end

  def templated(data)
    self.gsub(/{{ *([^{}]+|'[^']+'|"[^"]+") *}}/) do
      path = $1.strip
      func_re = /^(.+)\((.*)\)$/
      m = path.match func_re
      if m
        next data[m[1].to_sym].call(m[2]).to_s
      end
      if path[0] == '"' || path[0] == "'"
        next path[1..-2]
      end
      data.lookup(path).to_s
    end
  end
end
