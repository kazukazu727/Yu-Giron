class Genre < ActiveHash::Base
  self.data=[
    {id: 1, name: "---"},
    {id: 2, name: "アクション"},
    {id: 3, name: "RPG"},
    {id: 4, name: "シミュレーション"},
    {id: 5, name: "サウンドノベル"},
    {id: 6, name: "リズムゲーム"},
    {id: 7, name: "スポーツ"},
    {id: 8, name: "その他"},
    ]
end
