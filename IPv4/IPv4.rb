def valid_ipv4?(ip)
  ip_regex = /^(25[0-5]|2[0-4]\d|1\d{2}|[1-9]\d|\d)(\.(25[0-5]|2[0-4]\d|1\d{2}|[1-9]\d|\d)){3}$/

  if ip.match?(ip_regex)
    return true
  else
    return false
  end
end

puts valid_ipv4?('192.168.0.1')#true
puts valid_ipv4?('256.0.0.1')#false
puts valid_ipv4?('192.168.01.1')#false
puts valid_ipv4?(' 192.168.0.1') #false
