#language: zh-TW

功能: 特休
  場景大綱: 用到職日期來計算特休
    假設 一勞工在公司從 <start> 開始工作
    當 到了 <end> 時
    而且 計算特休假時
    那麼 根據勞基法 38 條，特休假為 <leaves> 天

    例子:
    | start    | end        | leaves |
    | 2017/4/1 | 2017/4/30  | 0      |
    | 2017/1/1 | 2017/7/31  | 3      |
    | 2017/1/1 | 2018/12/31 | 7      |
    | 2017/1/1 | 2019/1/1   | 10     |

  # 以下的晚點再做

  # 場景大綱: 用到職天數來計算特休
  #   假設 一勞工在公司工作了 <days> 天
  #   當 計算特休假時
  #   那麼 根據勞基法 38 條，特休假為 <leaves> 天

  #   例子:
  #   | days | leaves |
  #   | 30   | 0      |
  #   | 210  | 3      |
  #   | 380  | 7      |
  #   | 730  | 10     |
  #
  # 場景: 特休天數不符合勞基法
  #   假設 一勞工在公司工作了 1 年
  #   當 公司給該勞工 4 天特休
  #   那麼 違反 "勞動基準法" 38 條
  #   而且 根據勞基法 79 條，罰款為 20000 元至 1500000 元

  # 場景: 特休時又回來工作
  #   假設 一勞工的平均時薪為 150 元
  #   當 請特休假時
  #   而且 雇主因故要求勞工該天上班 8 小時
  #   那麼 根據勞基法 39 條，加給工資為 1500 元

  # 場景: 公用事業之勞工請了特休假，雇主可以停止你的特休
  #   假設 一勞工的平均時薪為 150 元
  #   而且 為公用事業之勞工
  #   當 請特休假時
  #   而且 當地主管機關認有必要時，停止其特休
  #   而且 上班 8 小時
  #   那麼 根據勞基法 41 條，合法
  #   而且 根據勞基法 39 條，加給工資為 1500
