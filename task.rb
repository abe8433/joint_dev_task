# 課題の回答は このファイル をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

def q1
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  # names += ["斎藤"]
  # names.push("斎藤") ←複数の要素をまとめて追加可能
  # 単一要素の追加であれば次のメソッドでも可
  names << "斎藤"

  puts names
end

def q2
  array1 = ["dog", "cat", "fish"]
  array2 = ["bird", "bat", "tiger"]

  # 以下に回答を記載
  array = array1 + array2

  puts array
end

def q3
  numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

  # 以下に回答を記載
  puts numbers.count(3)
end

def q4
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  # 以下に回答を記載
  sports.compact!
  # 以下は変更しないで下さい
  p sports
end

def q5
  array1 = []
  array2 = [1, 5, 8, 10]

  # 以下に回答を記載
  puts array1.empty?

  puts array2.empty?
end

def q6
  numbers1 = [1, 2, 3, 4, 5]

  # 以下に回答を記載
  numbers2 = numbers1.map { |n| n * 10 }

  p numbers2
end

def q7
  array = ["1", "2", "3", "4", "5"]

  # 以下に回答を記載
  # array.map! { |n| n.to_i } ←修正前
  array.map!(&:to_i) 
  # 以下は変更しないで下さい
  p array
end

def q8
  programming_languages = %w(ruby php python javascript)

  # 以下に回答を記載
  programming_languages.map!(&:capitalize)
  upper_case_programming_languages = programming_languages.map(&:upcase)
  # 以下は変更しないで下さい
  p programming_languages
  p upper_case_programming_languages
end

def q9
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names.each.with_index(1) { |name, i| puts "会員No.#{i} #{name}さん"}
end

def q10
  foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)

  # 以下に回答を記載
  foods.each do |food|
    if food.include?("うに")
      puts "好物です"
    else
      puts "まぁまぁ好きです"
    end
  end
end

def q11
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

  # 以下に回答を記載
  # sports.flatten! ←修正前
  # sports.uniq!    ←修正前
  sports.flatten!.uniq!

  sports.each.with_index(1) { |sport, i| puts "No#{i} #{sport}" }
end

def q12
  data = { user: { name: "satou", age: 33 } }

  # 以下に回答を記載
  p data[:user][:name]
end

def q13
  user_data = { name: "神里", age: 31, address: "埼玉" }
  update_data = { age: 32, address: "沖縄" }

  # 以下に回答を記載
  user_data[:age] = update_data[:age]
  user_data[:address] = update_data[:address]

  puts user_data
end

def q14
  data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }

  # 以下に回答を記載
  p data.keys

end

def q15
  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  # 以下に回答を記載
  #  puts data1.has_key?(:age) == true ? "OK" : "NG" ←修正前
  #  puts data2.has_key?(:age) == true ? "OK" : "NG" ←修正前
  #  puts data1.has_key?(:age)  出力結果：true ←確認用
  #  puts data2.has_key?(:age)  出力結果：false ←確認用
   puts data1.has_key?(:age)  ? "OK" : "NG"
   puts data2.has_key?(:age)  ? "OK" : "NG"
end

def q16
  users = [
    { name: "satou", age: 22 },
    { name: "yamada", age: 12 },
    { name: "takahashi", age: 32 },
    { name: "nakamura", age: 41 }
  ]

  # 以下に回答を記載
  users.each do |user|
    puts "私の名前は#{user[:name]}です。年齢は#{user[:age]}歳です。"
  end
end

class UserQ17
  # 以下に回答を記載
  def initialize(name:, age:, gender:)
    @name = name
    @age = age
    @gender = gender
  end
  
  def info
    puts <<~TEXT
      名前:#{@name}
      年齢:#{@age}
      性別:#{@gender}
    TEXT
  end
end

def q17
  # ここは変更しないで下さい（ユーザー情報は変更していただいてOKです）
  user1 = UserQ17.new(name: "神里", age: 32, gender: "男")
  user2 = UserQ17.new(name: "あじー", age: 32, gender: "男")

  user1.info
  puts "-------------"
  user2.info
end

class UserQ18
  # 以下に回答を記載
  def initialize(name:, age:)
    @name = name 
    @age = age
  end

  # def introduce #←ここから再修正前（復習のために残す）
  #   if @age >= 20 #←数字（年齢）は適当に設定しました。
  #   print "こんにちは、#{@name}と申します。宜しくお願いいたします。" #←「puts」にすると出力に無駄な改行が入ってしまうので注意！
  #   else print "はいさいまいど〜、#{@name}です！！！" #←「puts」にすると出力に無駄な改行が入ってしまうので注意！
  #   end
  # end #←ここまで再修正前、下でintroduceメソッドに対してputsで出力するので、「print」は不要

  def introduce #←ここから再修正後
    if @age >= 20
      "こんにちは、#{@name}と申します。宜しくお願いいたします。"
    else
      "はいさいまいど〜、#{@name}です！！！"
    end
  end
end

def q18
  # ここは変更しないで下さい
  user1 = UserQ18.new(name: "あじー", age: 32)
  user2 = UserQ18.new(name: "ゆたぼん", age: 10)

  puts user1.introduce
  puts user2.introduce
end

class Item
  # 以下を修正して下さい
  attr_reader :name
  def initialize(name:)
    @name = name
  end
end

def q19
  # ここは変更しないで下さい
  book = Item.new(name: "ゼロ秒思考")
  puts book.name
end

class UserQ20
  # 以下に回答を記載
  attr_reader :name, :age
  def initialize(name:, age:)
    @name = name
    @age = age
  end
end

class Zoo
  # 以下に回答を記載
  def initialize(name:, entry_fee:) #←①「name」の処理はこれで終わり？
    # @zoo_name = name ←今回は不要？
    @entry_fee = entry_fee
  end

  # ↓ここから修正前（復習のために残す）
  # def info_entry_fee(users) #↓②以下のif文をもっと簡潔に書けないか？
  #   if (0..5).include?(users.age) #←③条件を「<=」や「>=」を使って書けないのか？
  #     entry_fee = @entry_fee[:infant]    【参考1】条件の別の書き方
  #   elsif (6..12).include?(users.age)      users.age >= 0 && users.age <= 5
  #     entry_fee = @entry_fee[:children]    users.age >= 6 && users.age <= 12
  #   elsif (13..64).include?(users.age)     users.age >= 13 && users.age <= 64
  #     entry_fee = @entry_fee[:adult]       users.age >= 65 && users.age <= 120
  #   else (65..120).include?(users.age) 
  #     entry_fee = @entry_fee[:senior]    【参考2】引数を「users」としているが出力部分に合わせて「user」としたほうが良い。
  #   end                                    ここはeach文で回した処理のひとつひとつを受け取っているイメージなので, 単数形の方が自然
  #   puts "#{users.name}さんの入場料金は #{entry_fee} 円です。"
  # end #←ここまで修正前、下でcase文を使って書き直し(引数も修正)

  # def info_entry_fee(user) #←ここから再修正前（復習のために残す）
  #   case user.age
  #   when 0..5
  #     entry_fee = @entry_fee[:infant]
  #   when 6..12
  #     entry_fee = @entry_fee[:children]
  #   when 13..64
  #     entry_fee = @entry_fee[:adult]
  #   when 65..120
  #     entry_fee = @entry_fee[:senior]
  #   end
  #   puts "#{user.name}さんの入場料金は #{entry_fee} 円です。"
  # end #←ここまで再修正前、下でリファクタリング

  def info_entry_fee(user)
    entry_fee = case user.age
    when 0..5
      @entry_fee[:infant]
    when 6..12
      @entry_fee[:children]
    when 13..64
      @entry_fee[:adult]
    when 65..120
      @entry_fee[:senior]
    end
    puts "#{user.name}さんの入場料金は #{entry_fee} 円です。"
  end
end

def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

  users = [
    UserQ20.new(name: "たま", age: 3),
    UserQ20.new(name: "ゆたぼん", age: 10),
    UserQ20.new(name: "あじー", age: 32),
    UserQ20.new(name: "ぎん", age: 108)
  ]

  users.each do |user|
    zoo.info_entry_fee(user)
  end
end