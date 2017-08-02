#language: zh-TW

# 這部分的測試資料都不太夠，而且下面表達變形工時的班表不容易閱讀如果要開始做這功能
# 請先找一個比較好的方式撰寫規格，我記得 cucumber 可以讀取外部檔案，或許可以把
# 工時表放在一個 csv 檔案再讀取進來，這樣會比較好閱讀。

@ignore
功能: 計算變形工時
  場景大綱: 計算雙週變形工時加班費
    假如 一個公司對一勞工採用雙週變形工時
    當 第一週的工作時間為 <d1> <d2> <d3> <d4> <d5> <d6> <d7>
    而且 第二週的工作時間為 <d8> <d9> <d10> <d11> <d12> <d13> <d14>
    而且 計算加班費時
    那麼 根據勞基法 30 條
    而且 第一週的加班時數為 <o1> <o2> <o3> <o4> <o5> <o6> <o7>
    而且 第二週的加班時數為 <o8> <o9> <o10> <o11> <o12> <o13> <o14>

    例子:
    | d1 | d2 | d3 | d4 | d5 | d6 | d7 | d8 | d9 | d10 | d11 | d12 | d13 | d14 | o1 | o2 | o3 | o4 | o5 | o6 | o7 | o8 | o9 | o10 | o11 | o12 | o13 | o14 |
    | 10 | 10 | 10 | 10 | 0  | 0  | 0  | 10 | 10 | 10  | 10  | 0   | 0   | 0   | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 0   | 0   | 0   | 0   | 0   |
    | 10 | 10 | 10 | 10 | 4  | 0  | 0  | 10 | 10 | 10  | 10  | 4   | 0   | 0   | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 0   | 0   | 0   | 0   | 0   |

  場景大綱: 計算四週變形工時的加班時數
    假如 一個公司對一勞工採用四週變形工時
    當 第一週的工作時間為  <d1> <d2> <d3> <d4> <d5> <d6> <d7>
    而且 第二週的工作時間為 <d8> <d9> <d10> <d11> <d12> <d13> <d14>
    而且 第三週的工作時間為 <d15> <d16> <d17> <d18> <d19> <d20> <d21>
    而且 第四週的工作時間為 <d22> <d23> <d24> <d25> <d26> <d27> <d28>
    而且 計算加班費時
    那麼 根據勞基法 30-1 條
    而且 第一週的加班時數為 <o1> <o2> <o3> <o4> <o5> <o6> <o7>
    而且 第二週的加班時數為 <o8> <o9> <o10> <o11> <o12> <o13> <o14>
    而且 第三週的加班時數為 <o15> <o16> <o17> <o18> <o19> <o20> <o21>
    而且 第四週的加班時數為 <o22> <o23> <o24> <o25> <o26> <o27> <o28>

    例子:
    | d1 | d2 | d3 | d4 | d5 | d6 | d7 | d8 | d9 | d10 | d11 | d12 | d13 | d14 | d15 | d16 | d17 | d18 | d19 | d20 | d21 | d22 | d23 | d24 | d25 | d26 | d27 | d28 | o1 | o2 | o3 | o4 | o5 | o6 | o7 | o8 | o9 | o10 | o11 | o12 | o13 | o14 | o15 | o16 | o17 | o18 | o19 | o20 | o21 | o22 | o23 | o24 | o25 | o26 | o27 | o28 |
    | 0  | 0  | 0  | 9  | 9  | 9  | 9  | 9  | 9  | 9   | 0   | 0   | 0   | 0   | 0   | 0   | 9   | 9   | 9   | 9   | 9   | 9   | 9   | 9   | 8   | 8   | 0   | 0   | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   |
    | 0  | 0  | 0  | 10 | 10 | 10 | 10 | 10 | 10 | 10  | 10  | 10  | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 10  | 10  | 10  | 10  | 10  | 10  | 10  | 0   | 0   | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   |

  場景大綱: 計算八週變形工時加班費
    假如 一個公司對一勞工採用八週變形工時
    當 第一週的工作時間為  <d1> <d2> <d3> <d4> <d5> <d6> <d7>
    而且 第二週的工作時間為 <d8> <d9> <d10> <d11> <d12> <d13> <d14>
    而且 第三週的工作時間為 <d15> <d16> <d17> <d18> <d19> <d20> <d21>
    而且 第四週的工作時間為 <d22> <d23> <d24> <d25> <d26> <d27> <d28>
    而且 第五週的工作時間為 <d29> <d30> <d31> <d32> <d33> <d34> <d35>
    而且 第六週的工作時間為 <d36> <d37> <d38> <d39> <d40> <d41> <d42>
    而且 第七週的工作時間為 <d43> <d44> <d45> <d46> <d47> <d48> <d49>
    而且 第八週的工作時間為 <d50> <d51> <d52> <d53> <d54> <d55> <d56>
    而且 計算加班費時
    那麼 根據勞基法 30-1 條
    而且 第一週的加班時數為 <o1> <o2> <o3> <o4> <o5> <o6> <o7>
    而且 第二週的加班時數為 <o8> <o9> <o10> <o11> <o12> <o13> <o14>
    而且 第三週的加班時數為 <o15> <o16> <o17> <o18> <o19> <o20> <o21>
    而且 第四週的加班時數為 <o22> <o23> <o24> <o25> <o26> <o27> <o28>
    而且 第五週的加班時數為 <o29> <o30> <o31> <o32> <o33> <o34> <o35>
    而且 第六週的加班時數為 <o36> <o37> <o38> <o39> <o40> <o41> <o42>
    而且 第七週的加班時數為 <o43> <o44> <o45> <o46> <o47> <o48> <o49>
    而且 第八週的加班時數為 <o50> <o51> <o52> <o53> <o54> <o55> <o56>

    例子:
    | d1 | d2 | d3 | d4 | d5 | d6 | d7 | d8 | d9 | d10 | d11 | d12 | d13 | d14 | d15 | d16 | d17 | d18 | d19 | d20 | d21 | d22 | d23 | d24 | d25 | d26 | d27 | d28 | d29 | d30 | d31 | d32 | d33 | d34 | d35 | d36 | d37 | d38 | d39 | d40 | d41 | d42 | d43 | d44 | d45 | d46 | d47 | d48 | d49 | d50 | d51 | d52 | d53 | d54 | d55 | d56 | o1 | o2 | o3 | o4 | o5 | o6 | o7 | o8 | o9 | o10 | o11 | o12 | o13 | o14 | o15 | o16 | o17 | o18 | o19 | o20 | o21 | o22 | o23 | o24 | o25 | o26 | o27 | o28 | o29 | o30 | o31 | o32 | o33 | o34 | o35 | o36 | o37 | o38 | o39 | o40 | o41 | o42 | o43 | o44 | o45 | o46 | o47 | o48 | o49 | o50 | o51 | o52 | o53 | o54 | o55 | o56 |
    | 0  | 8  | 8  | 8  | 8  | 8  | 8  | 0  | 8  | 8   | 8   | 8   | 8   | 8   | 0   | 8   | 8   | 8   | 8   | 8   | 8   | 0   | 8   | 8   | 8   | 8   | 8   | 8   | 0   | 8   | 8   | 8   | 8   | 8   | 8   | 0   | 8   | 8   | 8   | 8   | 8   | 8   | 0   | 8   | 8   | 8   | 8   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 0  | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   |
