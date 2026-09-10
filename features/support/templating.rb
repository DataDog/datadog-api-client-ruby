module GeneratedCode
  def self.normalize_identifier(value)
    value.to_s.gsub(/[^a-z0-9]/i, '').downcase
  end

  def self.same_identifier?(left, right)
    normalize_identifier(left) == normalize_identifier(right)
  end

  def self.find_identifier(value, candidates, &block)
    candidates.find do |candidate|
      compared_value = block ? block.call(candidate) : candidate
      same_identifier?(value, compared_value)
    end
  end
end

class Object
  def lookup(dotted_path)
    result = self
    dotted_path.split('.').each do |dot_part|
      dot_part.split('[').each do |part|
        if part == ''
          next
        end

        if part.include?(']')
          index = part.to_i
          result = result[index]
        else
          case result
          when Hash
            result = result.include?(part.to_sym) ? result[part.to_sym] : result[part]
          else
            attribute = if result.class.respond_to?(:attribute_map)
              result.class.attribute_map.find do |_ruby_name, json_name|
                GeneratedCode.same_identifier?(part, json_name)
              end&.first
            else
              GeneratedCode.find_identifier(part, result.public_methods)
            end
            raise NoMethodError, "No generated attribute for #{part.inspect} on #{result.class}" unless attribute

            result = result.public_send(attribute)
          end
        end
      end
    end

    result
  end
end

class String
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
