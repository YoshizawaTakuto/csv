require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
memo_type = gets.to_i

if memo_type == 1
    puts "新規ファイル名を入力してください" #memo_name
    memo_name = "#{gets.chomp}.csv"
    
    p "メモしたい内容を記入してください" #memo
    p "終わったら Ctrl+D を押してください"
    memo = STDIN.read
    
    CSV.open(memo_name, "w") do |csv| #内容を新規ファイルに挿入
        csv << [memo]
    end

elsif memo_type == 2
    puts "ファイル名を記入してください" #memo_name
    memo_name = "{#gets.chomp}.csv"
    
    p "メモしたい内容を記入してください" #memo
    p "終わったら Ctrl+D を押してください"
    memo = STDIN.read
    
    CSV.open(memo_name, "a") do |csv| #内容を既存ファイルに挿入
        csv << [memo]
    end

end

