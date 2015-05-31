# encoding: utf-8
# language: ja
@javascript
機能: ruby_p - 「p」ブロック
  背景:
    前提 "ブロック" タブを表示する

  シナリオ: ブロックのみ配置する
    もし 次のブロック("ruby_p")を配置する:
      """
      %block{:type => "ruby_p", :x => "0", :y => "0", :inline => "true"}
      """
    かつ ブロックからソースコードを生成する

    ならば テキストエディタのプログラムは以下を含むこと:
      """
      p("")
      """

  シナリオ: 式を設定したブロックを配置する
    もし 次のブロック("ruby_p")を配置する:
      """
      %block{:type => "ruby_p", :x => "0", :y => "0", :inline => "true"}
        %value{:name => "ARG"}
          %block{:type => "text"}
            %field{:name => "TEXT"}<
              こんにちは
      """
    かつ ブロックからソースコードを生成する

    ならば テキストエディタのプログラムは以下を含むこと:
      """
      p("こんにちは")
      """
