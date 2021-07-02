{"filter":false,"title":"buy.rb","tooltip":"/buy.rb","undoManager":{"mark":89,"position":89,"stack":[[{"start":{"row":0,"column":0},"end":{"row":0,"column":15},"action":"insert","lines":["require './key'"],"id":1}],[{"start":{"row":0,"column":15},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":2}],[{"start":{"row":1,"column":0},"end":{"row":28,"column":18},"action":"insert","lines":["require \"net/http\"","require \"uri\"","require \"openssl\"","","key = \"{{ YOUR API KEY }}\"","secret = \"{{ YOUR API SECRET }}\"","","timestamp = Time.now.to_i.to_s","method = \"POST\"","uri = URI.parse(\"https://api.bitflyer.com\")","uri.path = \"/v1/me/sendchildorder\"","body = ''","","text = timestamp + method + uri.request_uri + body","sign = OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new(\"sha256\"), secret, text)","","options = Net::HTTP::Post.new(uri.request_uri, initheader = {","  \"ACCESS-KEY\" => key,","  \"ACCESS-TIMESTAMP\" => timestamp,","  \"ACCESS-SIGN\" => sign,","  \"Content-Type\" => \"application/json\"","});","options.body = body","","https = Net::HTTP.new(uri.host, uri.port)","https.use_ssl = true","response = https.request(options)","puts response.body"],"id":3}],[{"start":{"row":12,"column":9},"end":{"row":12,"column":10},"action":"insert","lines":["*"],"id":4}],[{"start":{"row":12,"column":9},"end":{"row":12,"column":10},"action":"remove","lines":["*"],"id":5}],[{"start":{"row":12,"column":8},"end":{"row":20,"column":1},"action":"insert","lines":["{","  \"product_code\": \"BTC_JPY\",","  \"child_order_type\": \"LIMIT\",","  \"side\": \"BUY\",","  \"price\": 30000,","  \"size\": 0.1,","  \"minute_to_expire\": 10000,","  \"time_in_force\": \"GTC\"","}"],"id":6}],[{"start":{"row":13,"column":28},"end":{"row":13,"column":29},"action":"insert","lines":[" "],"id":7},{"start":{"row":13,"column":29},"end":{"row":13,"column":30},"action":"insert","lines":[" "]}],[{"start":{"row":13,"column":28},"end":{"row":13,"column":30},"action":"remove","lines":["  "],"id":9}],[{"start":{"row":13,"column":28},"end":{"row":13,"column":29},"action":"insert","lines":["1"],"id":10}],[{"start":{"row":13,"column":28},"end":{"row":13,"column":29},"action":"remove","lines":["1"],"id":11}],[{"start":{"row":13,"column":28},"end":{"row":13,"column":30},"action":"insert","lines":["  "],"id":12}],[{"start":{"row":13,"column":30},"end":{"row":13,"column":32},"action":"insert","lines":["  "],"id":13}],[{"start":{"row":13,"column":32},"end":{"row":13,"column":33},"action":"insert","lines":["*"],"id":14},{"start":{"row":13,"column":33},"end":{"row":13,"column":34},"action":"insert","lines":["o"]},{"start":{"row":13,"column":34},"end":{"row":13,"column":35},"action":"insert","lines":["f"]},{"start":{"row":13,"column":35},"end":{"row":13,"column":36},"action":"insert","lines":["g"]},{"start":{"row":13,"column":36},"end":{"row":13,"column":37},"action":"insert","lines":["o"]},{"start":{"row":13,"column":37},"end":{"row":13,"column":38},"action":"insert","lines":["h"]}],[{"start":{"row":13,"column":37},"end":{"row":13,"column":38},"action":"remove","lines":["h"],"id":15},{"start":{"row":13,"column":36},"end":{"row":13,"column":37},"action":"remove","lines":["o"]},{"start":{"row":13,"column":35},"end":{"row":13,"column":36},"action":"remove","lines":["g"]},{"start":{"row":13,"column":34},"end":{"row":13,"column":35},"action":"remove","lines":["f"]},{"start":{"row":13,"column":33},"end":{"row":13,"column":34},"action":"remove","lines":["o"]},{"start":{"row":13,"column":32},"end":{"row":13,"column":33},"action":"remove","lines":["*"]}],[{"start":{"row":13,"column":30},"end":{"row":13,"column":32},"action":"remove","lines":["  "],"id":16},{"start":{"row":13,"column":28},"end":{"row":13,"column":30},"action":"remove","lines":["  "]}],[{"start":{"row":13,"column":28},"end":{"row":13,"column":29},"action":"insert","lines":[" "],"id":17},{"start":{"row":13,"column":29},"end":{"row":13,"column":30},"action":"insert","lines":["/"]},{"start":{"row":13,"column":30},"end":{"row":13,"column":31},"action":"insert","lines":["/"]}],[{"start":{"row":13,"column":30},"end":{"row":13,"column":31},"action":"remove","lines":["/"],"id":18},{"start":{"row":13,"column":29},"end":{"row":13,"column":30},"action":"remove","lines":["/"]},{"start":{"row":13,"column":28},"end":{"row":13,"column":29},"action":"remove","lines":[" "]}],[{"start":{"row":11,"column":34},"end":{"row":12,"column":0},"action":"insert","lines":["",""],"id":19},{"start":{"row":12,"column":0},"end":{"row":12,"column":1},"action":"insert","lines":["f"]},{"start":{"row":12,"column":1},"end":{"row":12,"column":2},"action":"insert","lines":["g"]}],[{"start":{"row":12,"column":0},"end":{"row":12,"column":2},"action":"insert","lines":["# "],"id":20}],[{"start":{"row":12,"column":3},"end":{"row":12,"column":4},"action":"remove","lines":["g"],"id":21},{"start":{"row":12,"column":2},"end":{"row":12,"column":3},"action":"remove","lines":["f"]},{"start":{"row":12,"column":1},"end":{"row":12,"column":2},"action":"remove","lines":[" "]},{"start":{"row":12,"column":0},"end":{"row":12,"column":1},"action":"remove","lines":["#"]},{"start":{"row":11,"column":34},"end":{"row":12,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":13,"column":28},"end":{"row":13,"column":29},"action":"insert","lines":[" "],"id":22},{"start":{"row":13,"column":29},"end":{"row":13,"column":30},"action":"insert","lines":["#"]}],[{"start":{"row":13,"column":30},"end":{"row":13,"column":31},"action":"insert","lines":[" "],"id":23},{"start":{"row":13,"column":31},"end":{"row":13,"column":32},"action":"insert","lines":["i"]},{"start":{"row":13,"column":32},"end":{"row":13,"column":33},"action":"insert","lines":["j"]},{"start":{"row":13,"column":33},"end":{"row":13,"column":34},"action":"insert","lines":["f"]},{"start":{"row":13,"column":34},"end":{"row":13,"column":35},"action":"insert","lines":["a"]},{"start":{"row":13,"column":35},"end":{"row":13,"column":36},"action":"insert","lines":["r"]},{"start":{"row":13,"column":36},"end":{"row":13,"column":37},"action":"insert","lines":["e"]},{"start":{"row":13,"column":37},"end":{"row":13,"column":38},"action":"insert","lines":["o"]},{"start":{"row":13,"column":38},"end":{"row":13,"column":39},"action":"insert","lines":["j"]}],[{"start":{"row":13,"column":38},"end":{"row":13,"column":39},"action":"remove","lines":["j"],"id":24},{"start":{"row":13,"column":37},"end":{"row":13,"column":38},"action":"remove","lines":["o"]},{"start":{"row":13,"column":36},"end":{"row":13,"column":37},"action":"remove","lines":["e"]},{"start":{"row":13,"column":35},"end":{"row":13,"column":36},"action":"remove","lines":["r"]},{"start":{"row":13,"column":34},"end":{"row":13,"column":35},"action":"remove","lines":["a"]},{"start":{"row":13,"column":33},"end":{"row":13,"column":34},"action":"remove","lines":["f"]},{"start":{"row":13,"column":32},"end":{"row":13,"column":33},"action":"remove","lines":["j"]},{"start":{"row":13,"column":31},"end":{"row":13,"column":32},"action":"remove","lines":["i"]},{"start":{"row":13,"column":30},"end":{"row":13,"column":31},"action":"remove","lines":[" "]}],[{"start":{"row":13,"column":30},"end":{"row":13,"column":31},"action":"insert","lines":["f"],"id":25},{"start":{"row":13,"column":31},"end":{"row":13,"column":32},"action":"insert","lines":["b"]},{"start":{"row":13,"column":32},"end":{"row":13,"column":33},"action":"insert","lines":["v"]},{"start":{"row":13,"column":33},"end":{"row":13,"column":34},"action":"insert","lines":["f"]}],[{"start":{"row":13,"column":33},"end":{"row":13,"column":34},"action":"remove","lines":["f"],"id":26},{"start":{"row":13,"column":32},"end":{"row":13,"column":33},"action":"remove","lines":["v"]},{"start":{"row":13,"column":31},"end":{"row":13,"column":32},"action":"remove","lines":["b"]},{"start":{"row":13,"column":30},"end":{"row":13,"column":31},"action":"remove","lines":["f"]},{"start":{"row":13,"column":29},"end":{"row":13,"column":30},"action":"remove","lines":["#"]},{"start":{"row":13,"column":28},"end":{"row":13,"column":29},"action":"remove","lines":[" "]}],[{"start":{"row":11,"column":34},"end":{"row":12,"column":0},"action":"insert","lines":["",""],"id":27}],[{"start":{"row":12,"column":0},"end":{"row":12,"column":1},"action":"insert","lines":["L"],"id":28},{"start":{"row":12,"column":1},"end":{"row":12,"column":2},"action":"insert","lines":["I"]}],[{"start":{"row":12,"column":2},"end":{"row":12,"column":3},"action":"insert","lines":["M"],"id":29},{"start":{"row":12,"column":3},"end":{"row":12,"column":4},"action":"insert","lines":["I"]},{"start":{"row":12,"column":4},"end":{"row":12,"column":5},"action":"insert","lines":["T"]}],[{"start":{"row":12,"column":5},"end":{"row":12,"column":6},"action":"insert","lines":[" "],"id":30}],[{"start":{"row":12,"column":5},"end":{"row":12,"column":6},"action":"remove","lines":[" "],"id":31},{"start":{"row":12,"column":4},"end":{"row":12,"column":5},"action":"remove","lines":["T"]},{"start":{"row":12,"column":3},"end":{"row":12,"column":4},"action":"remove","lines":["I"]},{"start":{"row":12,"column":2},"end":{"row":12,"column":3},"action":"remove","lines":["M"]},{"start":{"row":12,"column":1},"end":{"row":12,"column":2},"action":"remove","lines":["I"]},{"start":{"row":12,"column":0},"end":{"row":12,"column":1},"action":"remove","lines":["L"]}],[{"start":{"row":12,"column":0},"end":{"row":12,"column":16},"action":"insert","lines":["child_order_type"],"id":32}],[{"start":{"row":12,"column":16},"end":{"row":12,"column":17},"action":"insert","lines":["　"],"id":33}],[{"start":{"row":12,"column":16},"end":{"row":12,"column":17},"action":"remove","lines":["　"],"id":34}],[{"start":{"row":12,"column":16},"end":{"row":12,"column":17},"action":"insert","lines":[" "],"id":35}],[{"start":{"row":12,"column":17},"end":{"row":12,"column":20},"action":"insert","lines":["指値か"],"id":36}],[{"start":{"row":12,"column":20},"end":{"row":12,"column":24},"action":"insert","lines":["成り行き"],"id":37},{"start":{"row":12,"column":24},"end":{"row":12,"column":25},"action":"insert","lines":["を"]}],[{"start":{"row":12,"column":25},"end":{"row":12,"column":27},"action":"insert","lines":["指定"],"id":38}],[{"start":{"row":12,"column":0},"end":{"row":12,"column":2},"action":"insert","lines":["# "],"id":39}],[{"start":{"row":12,"column":29},"end":{"row":13,"column":0},"action":"insert","lines":["",""],"id":40}],[{"start":{"row":12,"column":29},"end":{"row":13,"column":0},"action":"insert","lines":["",""],"id":41}],[{"start":{"row":13,"column":0},"end":{"row":13,"column":4},"action":"insert","lines":["side"],"id":42}],[{"start":{"row":13,"column":4},"end":{"row":13,"column":5},"action":"insert","lines":["　"],"id":43}],[{"start":{"row":13,"column":4},"end":{"row":13,"column":5},"action":"remove","lines":["　"],"id":44}],[{"start":{"row":13,"column":4},"end":{"row":13,"column":5},"action":"insert","lines":[" "],"id":45}],[{"start":{"row":13,"column":5},"end":{"row":13,"column":7},"action":"insert","lines":["買い"],"id":46},{"start":{"row":13,"column":7},"end":{"row":13,"column":8},"action":"insert","lines":["か"]}],[{"start":{"row":13,"column":8},"end":{"row":13,"column":11},"action":"insert","lines":["売りか"],"id":47}],[{"start":{"row":13,"column":11},"end":{"row":13,"column":13},"action":"insert","lines":["指定"],"id":48}],[{"start":{"row":13,"column":0},"end":{"row":13,"column":2},"action":"insert","lines":["# "],"id":49}],[{"start":{"row":13,"column":15},"end":{"row":14,"column":0},"action":"insert","lines":["",""],"id":50}],[{"start":{"row":14,"column":0},"end":{"row":14,"column":5},"action":"insert","lines":["price"],"id":51}],[{"start":{"row":14,"column":5},"end":{"row":14,"column":6},"action":"insert","lines":["　"],"id":52}],[{"start":{"row":14,"column":5},"end":{"row":14,"column":6},"action":"remove","lines":["　"],"id":53}],[{"start":{"row":14,"column":5},"end":{"row":14,"column":6},"action":"insert","lines":[" "],"id":54}],[{"start":{"row":14,"column":6},"end":{"row":14,"column":8},"action":"insert","lines":["価格"],"id":55}],[{"start":{"row":14,"column":8},"end":{"row":15,"column":0},"action":"insert","lines":["",""],"id":56}],[{"start":{"row":14,"column":8},"end":{"row":15,"column":0},"action":"remove","lines":["",""],"id":57}],[{"start":{"row":14,"column":0},"end":{"row":14,"column":2},"action":"insert","lines":["# "],"id":58}],[{"start":{"row":14,"column":10},"end":{"row":15,"column":0},"action":"insert","lines":["",""],"id":59}],[{"start":{"row":15,"column":0},"end":{"row":15,"column":4},"action":"insert","lines":["size"],"id":60}],[{"start":{"row":15,"column":4},"end":{"row":15,"column":5},"action":"insert","lines":[" "],"id":61}],[{"start":{"row":15,"column":5},"end":{"row":15,"column":10},"action":"insert","lines":["注文の数量"],"id":62}],[{"start":{"row":15,"column":0},"end":{"row":15,"column":2},"action":"insert","lines":["# "],"id":63}],[{"start":{"row":14,"column":10},"end":{"row":14,"column":12},"action":"insert","lines":["()"],"id":64}],[{"start":{"row":14,"column":11},"end":{"row":14,"column":21},"action":"insert","lines":["現在と離れすぎてると"],"id":65}],[{"start":{"row":14,"column":21},"end":{"row":14,"column":27},"action":"insert","lines":["エラーになる"],"id":66}],[{"start":{"row":21,"column":15},"end":{"row":21,"column":16},"action":"remove","lines":["0"],"id":67},{"start":{"row":21,"column":14},"end":{"row":21,"column":15},"action":"remove","lines":["0"]},{"start":{"row":21,"column":13},"end":{"row":21,"column":14},"action":"remove","lines":["0"]},{"start":{"row":21,"column":12},"end":{"row":21,"column":13},"action":"remove","lines":["0"]},{"start":{"row":21,"column":11},"end":{"row":21,"column":12},"action":"remove","lines":["3"]}],[{"start":{"row":21,"column":11},"end":{"row":21,"column":12},"action":"insert","lines":["3"],"id":68},{"start":{"row":21,"column":12},"end":{"row":21,"column":13},"action":"insert","lines":["7"]},{"start":{"row":21,"column":13},"end":{"row":21,"column":14},"action":"insert","lines":["0"]},{"start":{"row":21,"column":14},"end":{"row":21,"column":15},"action":"insert","lines":["0"]},{"start":{"row":21,"column":15},"end":{"row":21,"column":16},"action":"insert","lines":["0"]}],[{"start":{"row":21,"column":16},"end":{"row":21,"column":17},"action":"insert","lines":["0"],"id":69},{"start":{"row":21,"column":17},"end":{"row":21,"column":18},"action":"insert","lines":["0"]}],[{"start":{"row":21,"column":17},"end":{"row":21,"column":18},"action":"remove","lines":["0"],"id":70}],[{"start":{"row":15,"column":12},"end":{"row":15,"column":14},"action":"insert","lines":["()"],"id":71}],[{"start":{"row":15,"column":13},"end":{"row":15,"column":14},"action":"insert","lines":["s"],"id":72},{"start":{"row":15,"column":14},"end":{"row":15,"column":15},"action":"insert","lines":["a"]},{"start":{"row":15,"column":15},"end":{"row":15,"column":16},"action":"insert","lines":["i"]}],[{"start":{"row":15,"column":15},"end":{"row":15,"column":16},"action":"remove","lines":["i"],"id":73},{"start":{"row":15,"column":14},"end":{"row":15,"column":15},"action":"remove","lines":["a"]},{"start":{"row":15,"column":13},"end":{"row":15,"column":14},"action":"remove","lines":["s"]}],[{"start":{"row":15,"column":13},"end":{"row":15,"column":16},"action":"insert","lines":["今回は"],"id":74}],[{"start":{"row":15,"column":16},"end":{"row":15,"column":21},"action":"insert","lines":["最小の設定"],"id":75}],[{"start":{"row":15,"column":22},"end":{"row":16,"column":0},"action":"insert","lines":["",""],"id":76}],[{"start":{"row":16,"column":0},"end":{"row":16,"column":16},"action":"insert","lines":["minute_to_expire"],"id":77}],[{"start":{"row":23,"column":12},"end":{"row":23,"column":13},"action":"insert","lines":["0"],"id":78},{"start":{"row":23,"column":13},"end":{"row":23,"column":14},"action":"insert","lines":["0"]}],[{"start":{"row":16,"column":16},"end":{"row":16,"column":17},"action":"insert","lines":[" "],"id":79}],[{"start":{"row":16,"column":17},"end":{"row":16,"column":25},"action":"insert","lines":["注文を出してから"],"id":80}],[{"start":{"row":16,"column":25},"end":{"row":16,"column":35},"action":"insert","lines":["無効になるまでの時間"],"id":81}],[{"start":{"row":16,"column":35},"end":{"row":16,"column":37},"action":"insert","lines":["分で"],"id":82},{"start":{"row":16,"column":37},"end":{"row":16,"column":39},"action":"insert","lines":["指定"]}],[{"start":{"row":16,"column":0},"end":{"row":16,"column":2},"action":"insert","lines":["# "],"id":83}],[{"start":{"row":16,"column":41},"end":{"row":17,"column":0},"action":"insert","lines":["",""],"id":84}],[{"start":{"row":17,"column":0},"end":{"row":17,"column":13},"action":"insert","lines":["time_in_force"],"id":85}],[{"start":{"row":17,"column":13},"end":{"row":17,"column":14},"action":"insert","lines":[" "],"id":86}],[{"start":{"row":17,"column":14},"end":{"row":17,"column":15},"action":"insert","lines":["s"],"id":87},{"start":{"row":17,"column":15},"end":{"row":17,"column":16},"action":"insert","lines":["i"]},{"start":{"row":17,"column":16},"end":{"row":17,"column":17},"action":"insert","lines":["k"]},{"start":{"row":17,"column":17},"end":{"row":17,"column":18},"action":"insert","lines":["k"]},{"start":{"row":17,"column":18},"end":{"row":17,"column":19},"action":"insert","lines":["o"]},{"start":{"row":17,"column":19},"end":{"row":17,"column":20},"action":"insert","lines":["u"]}],[{"start":{"row":17,"column":19},"end":{"row":17,"column":20},"action":"remove","lines":["u"],"id":88},{"start":{"row":17,"column":18},"end":{"row":17,"column":19},"action":"remove","lines":["o"]},{"start":{"row":17,"column":17},"end":{"row":17,"column":18},"action":"remove","lines":["k"]},{"start":{"row":17,"column":16},"end":{"row":17,"column":17},"action":"remove","lines":["k"]},{"start":{"row":17,"column":15},"end":{"row":17,"column":16},"action":"remove","lines":["i"]},{"start":{"row":17,"column":14},"end":{"row":17,"column":15},"action":"remove","lines":["s"]}],[{"start":{"row":17,"column":14},"end":{"row":17,"column":20},"action":"insert","lines":["執行数量条件"],"id":89}],[{"start":{"row":17,"column":0},"end":{"row":17,"column":2},"action":"insert","lines":["# "],"id":90}],[{"start":{"row":17,"column":22},"end":{"row":18,"column":0},"action":"remove","lines":["",""],"id":91}],[{"start":{"row":5,"column":0},"end":{"row":42,"column":18},"action":"remove","lines":["key = \"{{ YOUR API KEY }}\"","secret = \"{{ YOUR API SECRET }}\"","","timestamp = Time.now.to_i.to_s","method = \"POST\"","uri = URI.parse(\"https://api.bitflyer.com\")","uri.path = \"/v1/me/sendchildorder\"","# child_order_type 指値か成り行きを指定","# side 買いか売りか指定","# price 価格(現在と離れすぎてるとエラーになる)","# size 注文の数量(今回は最小の設定)","# minute_to_expire 注文を出してから無効になるまでの時間分で指定","# time_in_force 執行数量条件","body = '{","  \"product_code\": \"BTC_JPY\",","  \"child_order_type\": \"LIMIT\",","  \"side\": \"BUY\",","  \"price\": 370000,","  \"size\": 0.001,","  \"minute_to_expire\": 10000,","  \"time_in_force\": \"GTC\"","}'","","text = timestamp + method + uri.request_uri + body","sign = OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new(\"sha256\"), secret, text)","","options = Net::HTTP::Post.new(uri.request_uri, initheader = {","  \"ACCESS-KEY\" => key,","  \"ACCESS-TIMESTAMP\" => timestamp,","  \"ACCESS-SIGN\" => sign,","  \"Content-Type\" => \"application/json\"","});","options.body = body","","https = Net::HTTP.new(uri.host, uri.port)","https.use_ssl = true","response = https.request(options)","puts response.body"],"id":93},{"start":{"row":4,"column":0},"end":{"row":5,"column":0},"action":"remove","lines":["",""]},{"start":{"row":3,"column":17},"end":{"row":4,"column":0},"action":"remove","lines":["",""]}]]},"ace":{"folds":[],"scrolltop":100.5,"scrollleft":0,"selection":{"start":{"row":42,"column":18},"end":{"row":42,"column":18},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1625195300852,"hash":"d89227df7b49b1c086e1f06fa5704519e239b3ba"}